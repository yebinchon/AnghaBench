
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_1__* ctrls; int quality; int jpeg_hdr; } ;
struct gspca_dev {int height; int width; int* usb_buf; int usb_err; scalar_t__ ctrl_inac; } ;
struct TYPE_2__ {int val; } ;


 size_t BRIGHTNESS ;
 size_t COLORS ;
 size_t GAMMA ;
 size_t SHARPNESS ;
 int jpeg_define (int ,int,int,int) ;
 int jpeg_set_qual (int ,int ) ;
 int * mi_data ;
 int mi_w (struct gspca_dev*,int,int ) ;
 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 *data;
 int i;


 jpeg_define(sd->jpeg_hdr, gspca_dev->height, gspca_dev->width,
   0x21);
 jpeg_set_qual(sd->jpeg_hdr, sd->quality);

 data = gspca_dev->usb_buf;

 data[0] = 0x01;
 data[1] = 0x01;
 reg_w(gspca_dev, 2);




 data[0] = 0x00;
 data[1] = 0x0c | 0x01;
 data[2] = 0x01;
 data[3] = gspca_dev->width / 8;
 data[4] = gspca_dev->height / 8;
 data[5] = 0x30;

 data[6] = 0x02;
 data[7] = sd->ctrls[GAMMA].val * 0x40;
 data[8] = 0x01;



 data[9] = 0x52;

 data[10] = 0x18;

 reg_w(gspca_dev, 11);

 data[0] = 0x23;
 data[1] = 0x09;

 reg_w(gspca_dev, 2);

 data[0] = 0x3c;




 data[1] = 50;

 reg_w(gspca_dev, 2);


 data[0] = 0x5e;
 data[1] = 0;




 data[2] = sd->ctrls[COLORS].val << 3;
 data[3] = ((sd->ctrls[COLORS].val >> 2) & 0xf8) | 0x04;
 data[4] = sd->ctrls[BRIGHTNESS].val;
 data[5] = 0x00;

 reg_w(gspca_dev, 6);

 data[0] = 0x67;

 data[1] = sd->ctrls[SHARPNESS].val * 4 + 3;
 data[2] = 0x14;
 reg_w(gspca_dev, 3);

 data[0] = 0x69;
 data[1] = 0x2f;
 data[2] = 0x28;
 data[3] = 0x42;
 reg_w(gspca_dev, 4);

 data[0] = 0x63;
 data[1] = 0x07;
 reg_w(gspca_dev, 2);



 for (i = 0; i < sizeof mi_data; i++)
  mi_w(gspca_dev, i + 1, mi_data[i]);

 data[0] = 0x00;
 data[1] = 0x4d;
 reg_w(gspca_dev, 2);

 gspca_dev->ctrl_inac = 0;
 return gspca_dev->usb_err;
}
