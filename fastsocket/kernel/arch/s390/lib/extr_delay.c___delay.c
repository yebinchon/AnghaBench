
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void __delay(unsigned long loops)
{







 asm volatile("0: brct %0,0b" : : "d" ((loops/2) + 1));
}
