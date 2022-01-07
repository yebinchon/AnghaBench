
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_POWER_OFF ;
 int printk (char*,int ) ;
 int rtas_call (int ,int,int,int *,int,int) ;
 int rtas_flash_term_hook (int ) ;
 int rtas_token (char*) ;

void rtas_power_off(void)
{
 if (rtas_flash_term_hook)
  rtas_flash_term_hook(SYS_POWER_OFF);

 printk("RTAS power-off returned %d\n",
        rtas_call(rtas_token("power-off"), 2, 1, ((void*)0), -1, -1));
 for (;;);
}
