
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void _ne_outw(unsigned short w, void *portp)
{
 *(volatile unsigned short *)portp = (w >> 8);
 *(volatile unsigned short *)(portp+2) = (w & 0xff);
}
