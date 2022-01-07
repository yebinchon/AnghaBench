
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mxc_gpio_setup_multiple_pins (int ,int ,char*) ;
 int mxc_uart1_pins ;

__attribute__((used)) static int uart1_mxc_init(struct platform_device *pdev)
{
 return mxc_gpio_setup_multiple_pins(mxc_uart1_pins,
   ARRAY_SIZE(mxc_uart1_pins), "UART1");
}
