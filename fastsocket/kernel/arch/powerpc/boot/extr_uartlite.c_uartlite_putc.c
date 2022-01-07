
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ULITE_STATUS ;
 int ULITE_STATUS_TXFULL ;
 scalar_t__ ULITE_TX ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,unsigned char) ;
 scalar_t__ reg_base ;

__attribute__((used)) static void uartlite_putc(unsigned char c)
{
 u32 reg = ULITE_STATUS_TXFULL;
 while (reg & ULITE_STATUS_TXFULL)
  reg = in_be32(reg_base + ULITE_STATUS);
 out_be32(reg_base + ULITE_TX, c);
}
