
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int UART_LSR ;
 int UART_LSR_DR ;
 int in_8 (scalar_t__) ;
 scalar_t__ reg_base ;
 int reg_shift ;

__attribute__((used)) static u8 ns16550_tstc(void)
{
 return ((in_8(reg_base + (UART_LSR << reg_shift)) & UART_LSR_DR) != 0);
}
