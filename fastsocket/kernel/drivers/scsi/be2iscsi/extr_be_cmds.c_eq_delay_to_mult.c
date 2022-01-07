
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int const MAX_INTR_RATE ;
 int min (int,int) ;

__attribute__((used)) static u32 eq_delay_to_mult(u32 usec_delay)
{

 const u32 round = 10;
 u32 multiplier;

 if (usec_delay == 0)
  multiplier = 0;
 else {
  u32 interrupt_rate = 1000000 / usec_delay;
  if (interrupt_rate == 0)
   multiplier = 1023;
  else {
   multiplier = (651042 - interrupt_rate) * round;
   multiplier /= interrupt_rate;
   multiplier = (multiplier + round / 2) / round;
   multiplier = min(multiplier, (u32) 1023);
  }
 }
 return multiplier;
}
