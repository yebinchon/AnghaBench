
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



 unsigned int TRIG_ROUND_MASK ;


 scalar_t__ UINT_MAX ;
 unsigned int do_div (scalar_t__,unsigned int) ;

__attribute__((used)) static unsigned int divide_ns(uint64_t ns, unsigned int timebase,
         unsigned int round_mode)
{
 uint64_t div;
 unsigned int rem;

 div = ns;
 rem = do_div(div, timebase);
 round_mode &= TRIG_ROUND_MASK;
 switch (round_mode) {
 default:
 case 129:
  div += (rem + (timebase / 2)) / timebase;
  break;
 case 130:
  break;
 case 128:
  div += (rem + timebase - 1) / timebase;
  break;
 }
 return div > UINT_MAX ? UINT_MAX : (unsigned int)div;
}
