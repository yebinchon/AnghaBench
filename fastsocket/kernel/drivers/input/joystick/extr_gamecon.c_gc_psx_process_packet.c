
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc {int* pads; struct input_dev** dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_THUMBL ;
 int BTN_THUMBR ;
 size_t GC_DDR ;
 int GC_MAX_DEVICES ;

 int GC_PSX_BYTES ;



 int * gc_psx_abs ;
 int * gc_psx_btn ;
 int * gc_psx_ddr_btn ;
 int gc_psx_read_packet (struct gc*,unsigned char**,unsigned char*) ;
 int* gc_status_bit ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gc_psx_process_packet(struct gc *gc)
{
 unsigned char data[GC_MAX_DEVICES][GC_PSX_BYTES];
 unsigned char id[GC_MAX_DEVICES];
 struct input_dev *dev;
 int i, j;

 gc_psx_read_packet(gc, data, id);

 for (i = 0; i < GC_MAX_DEVICES; i++) {

  dev = gc->dev[i];
  if (!dev)
   continue;

  switch (id[i]) {

   case 128:

    input_report_key(dev, BTN_THUMBL, ~data[i][0] & 0x04);
    input_report_key(dev, BTN_THUMBR, ~data[i][0] & 0x02);

   case 130:
   case 131:

    if (gc->pads[GC_DDR] & gc_status_bit[i]) {
     for(j = 0; j < 4; j++)
      input_report_key(dev, gc_psx_ddr_btn[j], ~data[i][0] & (0x10 << j));
    } else {
     for (j = 0; j < 4; j++)
      input_report_abs(dev, gc_psx_abs[j + 2], data[i][j + 2]);

     input_report_abs(dev, ABS_X, 128 + !(data[i][0] & 0x20) * 127 - !(data[i][0] & 0x80) * 128);
     input_report_abs(dev, ABS_Y, 128 + !(data[i][0] & 0x40) * 127 - !(data[i][0] & 0x10) * 128);
    }

    for (j = 0; j < 8; j++)
     input_report_key(dev, gc_psx_btn[j], ~data[i][1] & (1 << j));

    input_report_key(dev, BTN_START, ~data[i][0] & 0x08);
    input_report_key(dev, BTN_SELECT, ~data[i][0] & 0x01);

    input_sync(dev);

    break;

   case 129:
    if (gc->pads[GC_DDR] & gc_status_bit[i]) {
     for(j = 0; j < 4; j++)
      input_report_key(dev, gc_psx_ddr_btn[j], ~data[i][0] & (0x10 << j));
    } else {
     input_report_abs(dev, ABS_X, 128 + !(data[i][0] & 0x20) * 127 - !(data[i][0] & 0x80) * 128);
     input_report_abs(dev, ABS_Y, 128 + !(data[i][0] & 0x40) * 127 - !(data[i][0] & 0x10) * 128);
    }

    for (j = 0; j < 8; j++)
     input_report_key(dev, gc_psx_btn[j], ~data[i][1] & (1 << j));

    input_report_key(dev, BTN_START, ~data[i][0] & 0x08);
    input_report_key(dev, BTN_SELECT, ~data[i][0] & 0x01);

    input_sync(dev);

    break;

   case 0:
    break;
  }
 }
}
