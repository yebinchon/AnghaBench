
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACHINE_REBOOT ;
 int machine_state ;
 int set_bit (int ,int *) ;
 int voiceblue_wdt_enable () ;

void voiceblue_reset(void)
{
 set_bit(MACHINE_REBOOT, &machine_state);
 voiceblue_wdt_enable();
 while (1) ;
}
