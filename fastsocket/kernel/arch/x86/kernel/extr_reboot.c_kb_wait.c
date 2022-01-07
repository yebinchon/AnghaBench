
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;
 int udelay (int) ;

__attribute__((used)) static inline void kb_wait(void)
{
 int i;

 for (i = 0; i < 0x10000; i++) {
  if ((inb(0x64) & 0x02) == 0)
   break;
  udelay(2);
 }
}
