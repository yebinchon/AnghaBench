
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct input_dev {int absbit; int dev; } ;
struct iforce {TYPE_2__* core_effects; TYPE_1__* type; int wait; int edata; scalar_t__ ecmd; scalar_t__ expect_packet; struct input_dev* dev; } ;
typedef int __s8 ;
typedef int __s16 ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int * btn; } ;


 int ABS_BRAKE ;
 int ABS_GAS ;
 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT1Y ;
 int ABS_RUDDER ;
 int ABS_THROTTLE ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_DEAD ;
 int FF_CORE_IS_PLAYED ;
 int FF_STATUS_PLAYING ;
 int FF_STATUS_STOPPED ;
 int HI (scalar_t__) ;
 int IFORCE_MAX_LENGTH ;
 int LO (scalar_t__) ;
 int dev_warn (int *,char*,int) ;
 TYPE_3__* iforce_hat_to_axis ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_ff_status (struct input_dev*,int,int ) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int mark_core_as_ready (struct iforce*,unsigned char) ;
 int memcpy (int ,unsigned char*,int ) ;
 int test_and_clear_bit (int ,int ) ;
 int test_and_set_bit (int ,int ) ;
 int test_bit (int ,int ) ;
 int wake_up (int *) ;

void iforce_process_packet(struct iforce *iforce, u16 cmd, unsigned char *data)
{
 struct input_dev *dev = iforce->dev;
 int i;
 static int being_used = 0;

 if (being_used)
  dev_warn(&iforce->dev->dev,
    "re-entrant call to iforce_process %d\n", being_used);
 being_used++;
 wake_up(&iforce->wait);

 if (!iforce->type) {
  being_used--;
  return;
 }

 switch (HI(cmd)) {

  case 0x01:
  case 0x03:
   if (HI(cmd) == 1) {
    input_report_abs(dev, ABS_X, (__s16) (((__s16)data[1] << 8) | data[0]));
    input_report_abs(dev, ABS_Y, (__s16) (((__s16)data[3] << 8) | data[2]));
    input_report_abs(dev, ABS_THROTTLE, 255 - data[4]);
    if (LO(cmd) >= 8 && test_bit(ABS_RUDDER ,dev->absbit))
     input_report_abs(dev, ABS_RUDDER, (__s8)data[7]);
   } else {
    input_report_abs(dev, ABS_WHEEL, (__s16) (((__s16)data[1] << 8) | data[0]));
    input_report_abs(dev, ABS_GAS, 255 - data[2]);
    input_report_abs(dev, ABS_BRAKE, 255 - data[3]);
   }

   input_report_abs(dev, ABS_HAT0X, iforce_hat_to_axis[data[6] >> 4].x);
   input_report_abs(dev, ABS_HAT0Y, iforce_hat_to_axis[data[6] >> 4].y);

   for (i = 0; iforce->type->btn[i] >= 0; i++)
    input_report_key(dev, iforce->type->btn[i], data[(i >> 3) + 5] & (1 << (i & 7)));


   if (i <= 8) {
    int btns = data[6];
    if (test_bit(ABS_HAT1X, dev->absbit)) {
     if (btns & 8) input_report_abs(dev, ABS_HAT1X, -1);
     else if (btns & 2) input_report_abs(dev, ABS_HAT1X, 1);
     else input_report_abs(dev, ABS_HAT1X, 0);
    }
    if (test_bit(ABS_HAT1Y, dev->absbit)) {
     if (btns & 1) input_report_abs(dev, ABS_HAT1Y, -1);
     else if (btns & 4) input_report_abs(dev, ABS_HAT1Y, 1);
     else input_report_abs(dev, ABS_HAT1Y, 0);
    }
   }

   input_sync(dev);

   break;

  case 0x02:
   input_report_key(dev, BTN_DEAD, data[0] & 0x02);
   input_sync(dev);


   i = data[1] & 0x7f;
   if (data[1] & 0x80) {
    if (!test_and_set_bit(FF_CORE_IS_PLAYED, iforce->core_effects[i].flags)) {

     input_report_ff_status(dev, i, FF_STATUS_PLAYING);
    }
   } else if (test_and_clear_bit(FF_CORE_IS_PLAYED, iforce->core_effects[i].flags)) {

    input_report_ff_status(dev, i, FF_STATUS_STOPPED);
   }
   if (LO(cmd) > 3) {
    int j;
    for (j = 3; j < LO(cmd); j += 2)
     mark_core_as_ready(iforce, data[j] | (data[j+1]<<8));
   }
   break;
 }
 being_used--;
}
