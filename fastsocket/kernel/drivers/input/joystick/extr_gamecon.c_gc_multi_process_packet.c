
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc {int* pads; struct input_dev** dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_THUMB ;
 int BTN_TRIGGER ;
 int GC_MAX_DEVICES ;
 size_t GC_MULTI ;
 size_t GC_MULTI2 ;
 int GC_MULTI2_LENGTH ;
 int GC_MULTI_LENGTH ;
 int gc_multi_read_packet (struct gc*,int,unsigned char*) ;
 int* gc_status_bit ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gc_multi_process_packet(struct gc *gc)
{
 unsigned char data[GC_MULTI2_LENGTH];
 struct input_dev *dev;
 int i, s;

 gc_multi_read_packet(gc, gc->pads[GC_MULTI2] ? GC_MULTI2_LENGTH : GC_MULTI_LENGTH, data);

 for (i = 0; i < GC_MAX_DEVICES; i++) {

  dev = gc->dev[i];
  if (!dev)
   continue;

  s = gc_status_bit[i];

  if (s & (gc->pads[GC_MULTI] | gc->pads[GC_MULTI2])) {
   input_report_abs(dev, ABS_X, !(s & data[2]) - !(s & data[3]));
   input_report_abs(dev, ABS_Y, !(s & data[0]) - !(s & data[1]));
   input_report_key(dev, BTN_TRIGGER, s & data[4]);
  }

  if (s & gc->pads[GC_MULTI2])
   input_report_key(dev, BTN_THUMB, s & data[5]);

  input_sync(dev);
 }
}
