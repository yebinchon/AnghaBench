
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int MAX_QUICK_PIT_ITERATIONS ;
 unsigned long PIT_TICK_RATE ;
 int do_div (unsigned long,int) ;
 int inb (int) ;
 int outb (int,int) ;
 scalar_t__ pit_expect_msb (int,unsigned long*,unsigned long*) ;
 int pit_verify_msb (int) ;
 int printk (char*) ;

__attribute__((used)) static unsigned long quick_pit_calibrate(void)
{
 int i;
 u64 tsc, delta;
 unsigned long d1, d2;


 outb((inb(0x61) & ~0x02) | 0x01, 0x61);
 outb(0xb0, 0x43);


 outb(0xff, 0x42);
 outb(0xff, 0x42);







 pit_verify_msb(0);

 if (pit_expect_msb(0xff, &tsc, &d1)) {
  for (i = 1; i <= MAX_QUICK_PIT_ITERATIONS; i++) {
   if (!pit_expect_msb(0xff-i, &delta, &d2))
    break;




   delta -= tsc;
   if (d1+d2 >= delta >> 11)
    continue;
   if (!pit_verify_msb(0xfe - i))
    break;
   goto success;
  }
 }
 printk("Fast TSC calibration failed\n");
 return 0;

success:
 delta *= PIT_TICK_RATE;
 do_div(delta, i*256*1000);
 printk("Fast TSC calibration using PIT\n");
 return delta;
}
