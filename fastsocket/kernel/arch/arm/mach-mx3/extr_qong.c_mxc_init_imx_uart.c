
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int mxc_iomux_setup_multiple_pins (int ,int ,char*) ;
 int mxc_register_device (int *,int *) ;
 int mxc_uart_device0 ;
 int uart_pdata ;
 int uart_pins ;

__attribute__((used)) static inline void mxc_init_imx_uart(void)
{
 mxc_iomux_setup_multiple_pins(uart_pins, ARRAY_SIZE(uart_pins),
   "uart-0");
 mxc_register_device(&mxc_uart_device0, &uart_pdata);
}
