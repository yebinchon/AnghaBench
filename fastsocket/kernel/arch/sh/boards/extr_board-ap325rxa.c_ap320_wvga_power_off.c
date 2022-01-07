
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPGA_BKLREG ;
 int FPGA_LCDREG ;
 int GPIO_PTS3 ;
 int ctrl_outw (int ,int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void ap320_wvga_power_off(void *board_data)
{

 ctrl_outw(0, FPGA_BKLREG);
 gpio_set_value(GPIO_PTS3, 1);


 ctrl_outw(0, FPGA_LCDREG);
}
