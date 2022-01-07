
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int config_bits; } ;
struct TYPE_3__ {int* clock; int num_clocks; } ;


 int CLOCK_DIVISOR_BITS (int) ;
 int CLOCK_MASK ;
 int CLOCK_SELECT_BITS (int) ;

 int TRIG_ROUND_MASK ;


 TYPE_2__* devpriv ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int a2150_get_timing(struct comedi_device *dev, unsigned int *period,
       int flags)
{
 int lub, glb, temp;
 int lub_divisor_shift, lub_index, glb_divisor_shift, glb_index;
 int i, j;


 lub_divisor_shift = 3;
 lub_index = 0;
 lub = thisboard->clock[lub_index] * (1 << lub_divisor_shift);
 glb_divisor_shift = 0;
 glb_index = thisboard->num_clocks - 1;
 glb = thisboard->clock[glb_index] * (1 << glb_divisor_shift);


 if (*period < glb)
  *period = glb;
 if (*period > lub)
  *period = lub;


 for (i = 0; i < 4; i++) {

  for (j = 0; j < thisboard->num_clocks; j++) {

   temp = thisboard->clock[j] * (1 << i);

   if (temp < lub && temp >= *period) {
    lub_divisor_shift = i;
    lub_index = j;
    lub = temp;
   }
   if (temp > glb && temp <= *period) {
    glb_divisor_shift = i;
    glb_index = j;
    glb = temp;
   }
  }
 }
 flags &= TRIG_ROUND_MASK;
 switch (flags) {
 case 129:
 default:

  if (lub - *period < *period - glb) {
   *period = lub;
  } else {
   *period = glb;
  }
  break;
 case 128:
  *period = lub;
  break;
 case 130:
  *period = glb;
  break;
 }


 devpriv->config_bits &= ~CLOCK_MASK;
 if (*period == lub) {
  devpriv->config_bits |=
      CLOCK_SELECT_BITS(lub_index) |
      CLOCK_DIVISOR_BITS(lub_divisor_shift);
 } else {
  devpriv->config_bits |=
      CLOCK_SELECT_BITS(glb_index) |
      CLOCK_DIVISOR_BITS(glb_divisor_shift);
 }

 return 0;
}
