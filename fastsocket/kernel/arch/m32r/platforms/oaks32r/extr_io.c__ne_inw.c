
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ portp ;



__attribute__((used)) static inline unsigned short _ne_inw(void *portp)
{
 unsigned short tmp;

 tmp = *(unsigned short *)(portp) & 0xff;
 tmp |= *(unsigned short *)(portp+2) << 8;
 return tmp;
}
