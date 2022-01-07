
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_device_register (int *) ;
 int serial_device ;

int platform_register_uart(void)
{
 return platform_device_register(&serial_device);
}
