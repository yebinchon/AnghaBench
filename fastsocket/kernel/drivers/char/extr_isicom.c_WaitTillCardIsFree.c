
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int in_atomic () ;
 int inw (unsigned long) ;
 int mdelay (int) ;
 int msleep (int) ;

__attribute__((used)) static inline int WaitTillCardIsFree(unsigned long base)
{
 unsigned int count = 0;
 unsigned int a = in_atomic();

 while (!(inw(base + 0xe) & 0x1) && count++ < 100)
  if (a)
   mdelay(1);
  else
   msleep(1);

 return !(inw(base + 0xe) & 0x1);
}
