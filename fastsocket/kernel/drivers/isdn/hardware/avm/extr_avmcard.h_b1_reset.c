
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1_RESET ;
 int b1outp (unsigned int,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static inline void b1_reset(unsigned int base)
{
 b1outp(base, B1_RESET, 0);
 mdelay(55 * 2);

 b1outp(base, B1_RESET, 1);
 mdelay(55 * 2);

 b1outp(base, B1_RESET, 0);
 mdelay(55 * 2);
}
