
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int* usb_buf; } ;
struct TYPE_2__ {int val; } ;


 size_t BRIGHTNESS ;
 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dev->usb_buf[0] = 0x61;
 gspca_dev->usb_buf[1] = sd->ctrls[BRIGHTNESS].val;
 reg_w(gspca_dev, 2);
}
