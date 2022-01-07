
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long uart_baud_base ;

void set_au1x00_uart_baud_base(unsigned long new_baud_base)
{
 uart_baud_base = new_baud_base;
}
