
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb_p (int ,unsigned long) ;

__attribute__((used)) static void WriteByteToHwPort(unsigned long addr, u8 val)
{
 outb_p(val, addr);
}
