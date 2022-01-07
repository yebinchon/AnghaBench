
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 unsigned long FLAGS_ACTIVATE ;
 unsigned long FLAGS_MODE1 ;
 int GFP_KERNEL ;
 int H_BEST_ENERGY ;
 int H_SUCCESS ;
 int PLPAR_HCALL9_BUFSIZE ;
 int __pa (int *) ;
 scalar_t__ cpu_online (int) ;
 int drc_index_to_cpu (int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int plpar_hcall9 (int ,unsigned long*,unsigned long,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t get_best_energy_list(char *page, int activate)
{
 int rc, cnt, i, cpu;
 unsigned long retbuf[PLPAR_HCALL9_BUFSIZE];
 unsigned long flags = 0;
 u32 *buf_page;
 char *s = page;

 buf_page = (u32 *) get_zeroed_page(GFP_KERNEL);
 if (!buf_page)
  return -ENOMEM;

 flags = FLAGS_MODE1;
 if (activate)
  flags |= FLAGS_ACTIVATE;

 rc = plpar_hcall9(H_BEST_ENERGY, retbuf, flags, 0, __pa(buf_page),
    0, 0, 0, 0, 0, 0);
 if (rc != H_SUCCESS) {
  free_page((unsigned long) buf_page);
  return -EINVAL;
 }

 cnt = retbuf[0];
 for (i = 0; i < cnt; i++) {
  cpu = drc_index_to_cpu(buf_page[2*i+1]);
  if ((cpu_online(cpu) && !activate) ||
      (!cpu_online(cpu) && activate))
   s += sprintf(s, "%d,", cpu);
 }
 if (s > page) {
  s--;
  s += sprintf(s, "\n");
 }

 free_page((unsigned long) buf_page);
 return s-page;
}
