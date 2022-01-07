
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int is_shub () ;
 int xp_unregister_nofault_code_sn2 () ;

void
xp_exit_sn2(void)
{
 BUG_ON(!is_shub());

 xp_unregister_nofault_code_sn2();
}
