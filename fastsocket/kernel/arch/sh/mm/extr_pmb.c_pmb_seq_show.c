
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int NR_PMB_ENTRIES ;
 unsigned long PMB_C ;
 unsigned int PMB_SZ_128M ;
 unsigned int PMB_SZ_16M ;
 unsigned int PMB_SZ_64M ;
 unsigned long PMB_SZ_MASK ;
 unsigned long PMB_UB ;
 unsigned long PMB_V ;
 unsigned long PMB_WT ;
 unsigned long ctrl_inl (int ) ;
 int mk_pmb_addr (int) ;
 int mk_pmb_data (int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int pmb_seq_show(struct seq_file *file, void *iter)
{
 int i;

 seq_printf(file, "V: Valid, C: Cacheable, WT: Write-Through\n"
    "CB: Copy-Back, B: Buffered, UB: Unbuffered\n");
 seq_printf(file, "ety   vpn  ppn  size   flags\n");

 for (i = 0; i < NR_PMB_ENTRIES; i++) {
  unsigned long addr, data;
  unsigned int size;
  char *sz_str = ((void*)0);

  addr = ctrl_inl(mk_pmb_addr(i));
  data = ctrl_inl(mk_pmb_data(i));

  size = data & PMB_SZ_MASK;
  sz_str = (size == PMB_SZ_16M) ? " 16MB":
    (size == PMB_SZ_64M) ? " 64MB":
    (size == PMB_SZ_128M) ? "128MB":
              "512MB";


  seq_printf(file, "%02d: %c 0x%02lx 0x%02lx %s %c %s %s\n",
      i, ((addr & PMB_V) && (data & PMB_V)) ? 'V' : ' ',
      (addr >> 24) & 0xff, (data >> 24) & 0xff,
      sz_str, (data & PMB_C) ? 'C' : ' ',
      (data & PMB_WT) ? "WT" : "CB",
      (data & PMB_UB) ? "UB" : " B");
 }

 return 0;
}
