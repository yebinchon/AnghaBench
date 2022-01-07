
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct input_dev {int dummy; } ;
struct ati_remote2 {int** buf; int channel_mask; int mode_mask; TYPE_1__** intf; struct input_dev* idev; } ;
typedef int s8 ;
struct TYPE_2__ {int dev; } ;


 int ATI_REMOTE2_PC ;
 int EV_REL ;
 int REL_X ;
 int REL_Y ;
 int dev_err (int *,char*,int,int,int,int) ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void ati_remote2_input_mouse(struct ati_remote2 *ar2)
{
 struct input_dev *idev = ar2->idev;
 u8 *data = ar2->buf[0];
 int channel, mode;

 channel = data[0] >> 4;

 if (!((1 << channel) & ar2->channel_mask))
  return;

 mode = data[0] & 0x0F;

 if (mode > ATI_REMOTE2_PC) {
  dev_err(&ar2->intf[0]->dev,
   "Unknown mode byte (%02x %02x %02x %02x)\n",
   data[3], data[2], data[1], data[0]);
  return;
 }

 if (!((1 << mode) & ar2->mode_mask))
  return;

 input_event(idev, EV_REL, REL_X, (s8) data[1]);
 input_event(idev, EV_REL, REL_Y, (s8) data[2]);
 input_sync(idev);
}
