
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPGA_BKLREG ;
 int FPGA_LCDREG ;
 int FPGA_LCDREG_VAL ;
 int GPIO_PTS3 ;
 int ctrl_outw (int,int ) ;
 int gpio_set_value (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void ap320_wvga_power_on(void *board_data)
{
 msleep(100);


 ctrl_outw(FPGA_LCDREG_VAL, FPGA_LCDREG);


 gpio_set_value(GPIO_PTS3, 0);
 ctrl_outw(0x100, FPGA_BKLREG);
}
