
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int cpu_mid_prop () ;
 int prom_getintdefault (int,int ,int ) ;
 scalar_t__ sparc_cpu_model ;
 scalar_t__ sun4m ;

__attribute__((used)) static int check_cpu_node(int nd, int *cur_inst,
     int (*compare)(int, int, void *), void *compare_arg,
     int *prom_node, int *mid)
{
 if (!compare(nd, *cur_inst, compare_arg)) {
  if (prom_node)
   *prom_node = nd;
  if (mid) {
   *mid = prom_getintdefault(nd, cpu_mid_prop(), 0);
   if (sparc_cpu_model == sun4m)
    *mid &= 3;
  }
  return 0;
 }

 (*cur_inst)++;

 return -ENODEV;
}
