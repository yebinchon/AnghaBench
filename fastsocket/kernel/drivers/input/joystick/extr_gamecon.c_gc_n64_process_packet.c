
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc {int* pads; struct input_dev** dev; } ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_X ;
 int ABS_Y ;
 int GC_MAX_DEVICES ;
 size_t GC_N64 ;
 int GC_N64_LENGTH ;
 int * gc_n64_btn ;
 size_t* gc_n64_bytes ;
 int gc_n64_read_packet (struct gc*,unsigned char*) ;
 int* gc_status_bit ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gc_n64_process_packet(struct gc *gc)
{
 unsigned char data[GC_N64_LENGTH];
 signed char axes[2];
 struct input_dev *dev;
 int i, j, s;

 gc_n64_read_packet(gc, data);

 for (i = 0; i < GC_MAX_DEVICES; i++) {

  dev = gc->dev[i];
  if (!dev)
   continue;

  s = gc_status_bit[i];

  if (s & gc->pads[GC_N64] & ~(data[8] | data[9])) {

   axes[0] = axes[1] = 0;

   for (j = 0; j < 8; j++) {
    if (data[23 - j] & s)
     axes[0] |= 1 << j;
    if (data[31 - j] & s)
     axes[1] |= 1 << j;
   }

   input_report_abs(dev, ABS_X, axes[0]);
   input_report_abs(dev, ABS_Y, -axes[1]);

   input_report_abs(dev, ABS_HAT0X, !(s & data[6]) - !(s & data[7]));
   input_report_abs(dev, ABS_HAT0Y, !(s & data[4]) - !(s & data[5]));

   for (j = 0; j < 10; j++)
    input_report_key(dev, gc_n64_btn[j], s & data[gc_n64_bytes[j]]);

   input_sync(dev);
  }
 }
}
