
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct analog {int mask; int * buttons; struct input_dev* dev; } ;


 int ANALOG_BTN_TL ;
 int ANALOG_BTN_TL2 ;
 int ANALOG_BTN_TR ;
 int ANALOG_BTN_TR2 ;
 int ANALOG_HAT_FCS ;
 int ANALOG_HBTN_CHF ;
 int * analog_axes ;
 int* analog_exts ;
 int * analog_hats ;
 int * analog_pads ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void analog_decode(struct analog *analog, int *axes, int *initial, int buttons)
{
 struct input_dev *dev = analog->dev;
 int i, j;

 if (analog->mask & ANALOG_HAT_FCS)
  for (i = 0; i < 4; i++)
   if (axes[3] < ((initial[3] * ((i << 1) + 1)) >> 3)) {
    buttons |= 1 << (i + 14);
    break;
   }

 for (i = j = 0; i < 6; i++)
  if (analog->mask & (0x10 << i))
   input_report_key(dev, analog->buttons[j++], (buttons >> i) & 1);

 if (analog->mask & ANALOG_HBTN_CHF)
  for (i = 0; i < 4; i++)
   input_report_key(dev, analog->buttons[j++], (buttons >> (i + 10)) & 1);

 if (analog->mask & ANALOG_BTN_TL)
  input_report_key(dev, analog_pads[0], axes[2] < (initial[2] >> 1));
 if (analog->mask & ANALOG_BTN_TR)
  input_report_key(dev, analog_pads[1], axes[3] < (initial[3] >> 1));
 if (analog->mask & ANALOG_BTN_TL2)
  input_report_key(dev, analog_pads[2], axes[2] > (initial[2] + (initial[2] >> 1)));
 if (analog->mask & ANALOG_BTN_TR2)
  input_report_key(dev, analog_pads[3], axes[3] > (initial[3] + (initial[3] >> 1)));

 for (i = j = 0; i < 4; i++)
  if (analog->mask & (1 << i))
   input_report_abs(dev, analog_axes[j++], axes[i]);

 for (i = j = 0; i < 3; i++)
  if (analog->mask & analog_exts[i]) {
   input_report_abs(dev, analog_hats[j++],
    ((buttons >> ((i << 2) + 7)) & 1) - ((buttons >> ((i << 2) + 9)) & 1));
   input_report_abs(dev, analog_hats[j++],
    ((buttons >> ((i << 2) + 8)) & 1) - ((buttons >> ((i << 2) + 6)) & 1));
  }

 input_sync(dev);
}
