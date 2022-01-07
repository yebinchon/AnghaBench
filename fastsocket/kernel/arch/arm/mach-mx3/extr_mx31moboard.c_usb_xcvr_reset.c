
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_RESET_B ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void usb_xcvr_reset(void)
{
 gpio_request(USB_RESET_B, "usb-reset");
 gpio_direction_output(USB_RESET_B, 0);
 mdelay(1);
 gpio_set_value(USB_RESET_B, 1);
}
