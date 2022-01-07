
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CAUSEB_IP ;
 int clz (unsigned int) ;
 int s0 ;

__attribute__((used)) static inline unsigned int irq_ffs(unsigned int pending)
{



 unsigned int a0 = 7;
 unsigned int t0;

 t0 = s0 & 0xf000;
 t0 = t0 < 1;
 t0 = t0 << 2;
 a0 = a0 - t0;
 s0 = s0 << t0;

 t0 = s0 & 0xc000;
 t0 = t0 < 1;
 t0 = t0 << 1;
 a0 = a0 - t0;
 s0 = s0 << t0;

 t0 = s0 & 0x8000;
 t0 = t0 < 1;

 a0 = a0 - t0;


 return a0;

}
