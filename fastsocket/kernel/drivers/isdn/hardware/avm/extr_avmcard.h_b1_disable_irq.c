
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1_INSTAT ;
 unsigned char b1outp (unsigned int,int ,int) ;

__attribute__((used)) static inline unsigned char b1_disable_irq(unsigned int base)
{
 return b1outp(base, B1_INSTAT, 0x00);
}
