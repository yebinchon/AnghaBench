
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int* usb_buf; } ;
typedef int s16 ;
struct TYPE_2__ {int val; } ;


 size_t COLORS ;
 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s16 val;

 val = sd->ctrls[COLORS].val;
 gspca_dev->usb_buf[0] = 0x5f;
 gspca_dev->usb_buf[1] = val << 3;
 gspca_dev->usb_buf[2] = ((val >> 2) & 0xf8) | 0x04;
 reg_w(gspca_dev, 3);
}
