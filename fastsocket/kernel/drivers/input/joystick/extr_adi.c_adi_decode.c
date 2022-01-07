
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct adi {char* abs; short* key; scalar_t__ ret; scalar_t__ length; int id; int axes10; int axes8; int buttons; int pad; int hats; struct input_dev* dev; } ;
struct TYPE_2__ {int x; int y; } ;


 int adi_get_bits (struct adi*,int) ;
 TYPE_1__* adi_hat_to_axis ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static int adi_decode(struct adi *adi)
{
 struct input_dev *dev = adi->dev;
 char *abs = adi->abs;
 short *key = adi->key;
 int i, t;

 if (adi->ret < adi->length || adi->id != (adi_get_bits(adi, 4) | (adi_get_bits(adi, 4) << 4)))
  return -1;

 for (i = 0; i < adi->axes10; i++)
  input_report_abs(dev, *abs++, adi_get_bits(adi, 10));

 for (i = 0; i < adi->axes8; i++)
  input_report_abs(dev, *abs++, adi_get_bits(adi, 8));

 for (i = 0; i < adi->buttons && i < 63; i++) {
  if (i == adi->pad) {
   t = adi_get_bits(adi, 4);
   input_report_abs(dev, *abs++, ((t >> 2) & 1) - ( t & 1));
   input_report_abs(dev, *abs++, ((t >> 1) & 1) - ((t >> 3) & 1));
  }
  input_report_key(dev, *key++, adi_get_bits(adi, 1));
 }

 for (i = 0; i < adi->hats; i++) {
  if ((t = adi_get_bits(adi, 4)) > 8) t = 0;
  input_report_abs(dev, *abs++, adi_hat_to_axis[t].x);
  input_report_abs(dev, *abs++, adi_hat_to_axis[t].y);
 }

 for (i = 63; i < adi->buttons; i++)
  input_report_key(dev, *key++, adi_get_bits(adi, 1));

 input_sync(dev);

 return 0;
}
