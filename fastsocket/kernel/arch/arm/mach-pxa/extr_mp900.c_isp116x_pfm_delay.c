
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static void isp116x_pfm_delay(struct device *dev, int delay)
{



 int cyc = delay / 10;


 __asm__ volatile ("0:\n"
  "subs %0, %1, #1\n"
  "bge 0b\n"
  :"=r" (cyc)
  :"0"(cyc)
 );
}
