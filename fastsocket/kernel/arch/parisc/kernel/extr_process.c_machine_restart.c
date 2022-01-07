
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_RESET ;
 int COMMAND_GLOBAL ;
 int PDC_CHASSIS_DIRECT_SHUTDOWN ;
 scalar_t__ ftc_bitmap ;
 int gsc_writel (int ,int ) ;
 int pdc_chassis_send_status (int ) ;
 int pdc_do_firm_test_reset (scalar_t__) ;
 int pdc_do_reset () ;

void machine_restart(char *cmd)
{
 pdc_chassis_send_status(PDC_CHASSIS_DIRECT_SHUTDOWN);


 pdc_do_reset();


 gsc_writel(CMD_RESET, COMMAND_GLOBAL);


 while (1) ;

}
