
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MAX_8042_FF ;
 int MAX_8042_LOOPS ;
 int inb (int) ;
 int io_delay () ;

__attribute__((used)) static int empty_8042(void)
{
 u8 status;
 int loops = MAX_8042_LOOPS;
 int ffs = MAX_8042_FF;

 while (loops--) {
  io_delay();

  status = inb(0x64);
  if (status == 0xff) {

   if (!--ffs)
    return -1;
  }
  if (status & 1) {

   io_delay();
   (void)inb(0x60);
  } else if (!(status & 2)) {

   return 0;
  }
 }

 return -1;
}
