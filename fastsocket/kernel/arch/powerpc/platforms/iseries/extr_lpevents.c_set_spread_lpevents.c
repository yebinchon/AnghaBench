
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NR_CPUS ;
 int printk (char*,unsigned long) ;
 unsigned long simple_strtoul (char*,int *,int ) ;
 unsigned long spread_lpevents ;

__attribute__((used)) static int set_spread_lpevents(char *str)
{
 unsigned long val = simple_strtoul(str, ((void*)0), 0);





 if (( val > 0) && (val <= NR_CPUS)) {
  spread_lpevents = val;
  printk("lpevent processing spread over %ld processors\n", val);
 } else {
  printk("invalid spread_lpevents %ld\n", val);
 }

 return 1;
}
