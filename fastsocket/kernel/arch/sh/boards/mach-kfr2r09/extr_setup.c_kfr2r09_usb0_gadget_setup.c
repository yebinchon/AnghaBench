
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int GPIO_FN_PDSTATUS ;
 int GPIO_PTN4 ;
 int GPIO_PTV6 ;
 int PORT_MSELCRB ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 int ctrl_inw (int) ;
 int ctrl_outw (int,int) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_get_value (int ) ;
 int gpio_request (int ,int *) ;
 scalar_t__ kfr2r09_usb0_gadget_i2c_setup () ;
 int msleep (int) ;

__attribute__((used)) static int kfr2r09_usb0_gadget_setup(void)
{
 int plugged_in;

 gpio_request(GPIO_PTN4, ((void*)0));
 gpio_direction_input(GPIO_PTN4);
 plugged_in = gpio_get_value(GPIO_PTN4);
 if (!plugged_in)
  return -ENODEV;

 if (kfr2r09_usb0_gadget_i2c_setup() != 0)
  return -ENODEV;

 ctrl_outw((ctrl_inw(PORT_MSELCRB) & ~0xc000) | 0x8000, PORT_MSELCRB);
 gpio_request(GPIO_FN_PDSTATUS, ((void*)0));
 gpio_request(GPIO_PTV6, ((void*)0));
 gpio_direction_output(GPIO_PTV6, 1);
 msleep(20);
 clk_enable(clk_get(((void*)0), "usb0"));
 ctrl_outw(0x0600, 0xa40501d4);

 return 0;
}
