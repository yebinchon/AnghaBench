
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rotary_encoder_platform_data {int inverted_a; int inverted_b; unsigned int steps; int axis; int rollover; int relative_axis; int gpio_b; int gpio_a; } ;
struct rotary_encoder {int armed; int dir; unsigned int pos; int input; struct rotary_encoder_platform_data* pdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int gpio_get_value (int ) ;
 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t rotary_encoder_irq(int irq, void *dev_id)
{
 struct rotary_encoder *encoder = dev_id;
 struct rotary_encoder_platform_data *pdata = encoder->pdata;
 int a = !!gpio_get_value(pdata->gpio_a);
 int b = !!gpio_get_value(pdata->gpio_b);
 int state;

 a ^= pdata->inverted_a;
 b ^= pdata->inverted_b;
 state = (a << 1) | b;

 switch (state) {

 case 0x0:
  if (!encoder->armed)
   break;

  if (pdata->relative_axis) {
   input_report_rel(encoder->input, pdata->axis,
      encoder->dir ? -1 : 1);
  } else {
   unsigned int pos = encoder->pos;

   if (encoder->dir) {

    if (pdata->rollover)
     pos += pdata->steps;
    if (pos)
     pos--;
   } else {

    if (pdata->rollover || pos < pdata->steps)
     pos++;
   }
   if (pdata->rollover)
    pos %= pdata->steps;
   encoder->pos = pos;
   input_report_abs(encoder->input, pdata->axis,
      encoder->pos);
  }
  input_sync(encoder->input);

  encoder->armed = 0;
  break;

 case 0x1:
 case 0x2:
  if (encoder->armed)
   encoder->dir = state - 1;
  break;

 case 0x3:
  encoder->armed = 1;
  break;
 }

 return IRQ_HANDLED;
}
