
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ixdp2x01_serial_device1 ;
 int ixdp2x01_serial_device2 ;
 int platform_device_register (int *) ;

__attribute__((used)) static void ixdp2x01_uart_init(void)
{
 platform_device_register(&ixdp2x01_serial_device1);
 platform_device_register(&ixdp2x01_serial_device2);
}
