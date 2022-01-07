
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_remove_all_hw_break () ;
 scalar_t__ kgdb_single_step ;

int kgdb_arch_init(void)
{
 kgdb_single_step = 0;

 bfin_remove_all_hw_break();
 return 0;
}
