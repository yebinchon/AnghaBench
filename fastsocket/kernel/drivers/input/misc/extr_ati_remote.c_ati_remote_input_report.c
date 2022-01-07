
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int actual_length; TYPE_1__* dev; struct ati_remote* context; } ;
struct input_dev {int dummy; } ;
struct ati_remote {unsigned char* inbuf; unsigned long old_jiffies; unsigned char* old_data; int repeat_count; unsigned long first_jiffies; TYPE_2__* interface; struct input_dev* idev; } ;
struct TYPE_6__ {int kind; int value; int code; int type; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int dev; } ;



 int KIND_FILTERED ;

 int KIND_LITERAL ;



 int REL_X ;
 int REL_Y ;
 int ati_remote_compute_accel (struct ati_remote*) ;
 int ati_remote_dump (int *,unsigned char*,int) ;
 int ati_remote_event_lookup (int,unsigned char,unsigned char) ;
 TYPE_3__* ati_remote_tbl ;
 int channel_mask ;
 int dbginfo (int *,char*,int,unsigned char,unsigned char,int,...) ;
 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*,int,unsigned char,unsigned char) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 void* jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int repeat_delay ;
 int repeat_filter ;
 scalar_t__ time_before (unsigned long,scalar_t__) ;

__attribute__((used)) static void ati_remote_input_report(struct urb *urb)
{
 struct ati_remote *ati_remote = urb->context;
 unsigned char *data= ati_remote->inbuf;
 struct input_dev *dev = ati_remote->idev;
 int index, acc;
 int remote_num;


 if ( (urb->actual_length != 4) || (data[0] != 0x14) ||
  ((data[3] & 0x0f) != 0x00) ) {
  ati_remote_dump(&urb->dev->dev, data, urb->actual_length);
  return;
 }



 remote_num = (data[3] >> 4) & 0x0f;
        if (channel_mask & (1 << (remote_num + 1))) {
  dbginfo(&ati_remote->interface->dev,
   "Masked input from channel 0x%02x: data %02x,%02x, mask= 0x%02lx\n",
   remote_num, data[1], data[2], channel_mask);
  return;
 }


 index = ati_remote_event_lookup(remote_num, data[1], data[2]);
 if (index < 0) {
  dev_warn(&ati_remote->interface->dev,
    "Unknown input from channel 0x%02x: data %02x,%02x\n",
    remote_num, data[1], data[2]);
  return;
 }
 dbginfo(&ati_remote->interface->dev,
  "channel 0x%02x; data %02x,%02x; index %d; keycode %d\n",
  remote_num, data[1], data[2], index, ati_remote_tbl[index].code);

 if (ati_remote_tbl[index].kind == KIND_LITERAL) {
  input_event(dev, ati_remote_tbl[index].type,
   ati_remote_tbl[index].code,
   ati_remote_tbl[index].value);
  input_sync(dev);

  ati_remote->old_jiffies = jiffies;
  return;
 }

 if (ati_remote_tbl[index].kind == KIND_FILTERED) {
  unsigned long now = jiffies;


  if (ati_remote->old_data[0] == data[1] &&
      ati_remote->old_data[1] == data[2] &&
      time_before(now, ati_remote->old_jiffies +
         msecs_to_jiffies(repeat_filter))) {
   ati_remote->repeat_count++;
  } else {
   ati_remote->repeat_count = 0;
   ati_remote->first_jiffies = now;
  }

  ati_remote->old_data[0] = data[1];
  ati_remote->old_data[1] = data[2];
  ati_remote->old_jiffies = now;





  if (ati_remote->repeat_count > 0 &&
      (ati_remote->repeat_count < 5 ||
       time_before(now, ati_remote->first_jiffies +
          msecs_to_jiffies(repeat_delay))))
   return;


  input_event(dev, ati_remote_tbl[index].type,
   ati_remote_tbl[index].code, 1);
  input_sync(dev);
  input_event(dev, ati_remote_tbl[index].type,
   ati_remote_tbl[index].code, 0);
  input_sync(dev);

 } else {






  acc = ati_remote_compute_accel(ati_remote);

  switch (ati_remote_tbl[index].kind) {
  case 132:
   input_event(dev, ati_remote_tbl[index].type,
    ati_remote_tbl[index].code,
    ati_remote_tbl[index].value * acc);
   break;
  case 130:
   input_report_rel(dev, REL_X, -acc);
   input_report_rel(dev, REL_Y, -acc);
   break;
  case 128:
   input_report_rel(dev, REL_X, acc);
   input_report_rel(dev, REL_Y, -acc);
   break;
  case 131:
   input_report_rel(dev, REL_X, -acc);
   input_report_rel(dev, REL_Y, acc);
   break;
  case 129:
   input_report_rel(dev, REL_X, acc);
   input_report_rel(dev, REL_Y, acc);
   break;
  default:
   dev_dbg(&ati_remote->interface->dev, "ati_remote kind=%d\n",
    ati_remote_tbl[index].kind);
  }
  input_sync(dev);

  ati_remote->old_jiffies = jiffies;
  ati_remote->old_data[0] = data[1];
  ati_remote->old_data[1] = data[2];
 }
}
