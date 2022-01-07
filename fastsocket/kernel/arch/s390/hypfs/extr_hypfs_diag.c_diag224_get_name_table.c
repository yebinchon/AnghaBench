
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBCASC (int*,int) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ diag224 (int*) ;
 int* diag224_cpu_names ;
 int kfree (int*) ;
 int* kmalloc (int ,int) ;

__attribute__((used)) static int diag224_get_name_table(void)
{

 diag224_cpu_names = kmalloc(PAGE_SIZE, GFP_KERNEL | GFP_DMA);
 if (!diag224_cpu_names)
  return -ENOMEM;
 if (diag224(diag224_cpu_names)) {
  kfree(diag224_cpu_names);
  return -EOPNOTSUPP;
 }
 EBCASC(diag224_cpu_names + 16, (*diag224_cpu_names + 1) * 16);
 return 0;
}
