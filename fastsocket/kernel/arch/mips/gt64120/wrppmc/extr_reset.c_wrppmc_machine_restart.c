
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_CM_CMASK ;
 int CONF_CM_UNCACHED ;
 int ST0_BEV ;
 int ST0_ERL ;
 int change_c0_config (int ,int ) ;
 int flush_cache_all () ;
 int local_irq_disable () ;
 int set_c0_status (int) ;
 int write_c0_wired (int ) ;

void wrppmc_machine_restart(char *command)
{






 local_irq_disable();
 set_c0_status(ST0_BEV | ST0_ERL);
 change_c0_config(CONF_CM_CMASK, CONF_CM_UNCACHED);
 flush_cache_all();
 write_c0_wired(0);
 __asm__ __volatile__("jr\t%0"::"r"(0xbfc00000));
}
