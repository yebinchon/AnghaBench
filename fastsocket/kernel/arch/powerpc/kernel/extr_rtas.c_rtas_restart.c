
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_RESTART ;
 int printk (char*,int ) ;
 int rtas_call (int ,int ,int,int *) ;
 int rtas_flash_term_hook (int ) ;
 int rtas_token (char*) ;

void rtas_restart(char *cmd)
{
 if (rtas_flash_term_hook)
  rtas_flash_term_hook(SYS_RESTART);
 printk("RTAS system-reboot returned %d\n",
        rtas_call(rtas_token("system-reboot"), 0, 1, ((void*)0)));
 for (;;);
}
