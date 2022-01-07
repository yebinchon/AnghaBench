
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (unsigned long) ;

__attribute__((used)) static int wait_dac_ready(unsigned long iobase)
{
 unsigned long retry = 100000L;







 while (retry--) {
  if (inb(iobase + 3) & 0x80)
   return 0;

 }
 return 1;
}
