
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int* usb_buf; } ;
struct TYPE_2__ {scalar_t__ val; } ;


 size_t ILLUM_BOT ;
 size_t ILLUM_TOP ;
 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setilluminators(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_dev->usb_buf[0] = 0x22;
 if (sd->ctrls[ILLUM_TOP].val)
  gspca_dev->usb_buf[1] = 0x76;
 else if (sd->ctrls[ILLUM_BOT].val)
  gspca_dev->usb_buf[1] = 0x7a;
 else
  gspca_dev->usb_buf[1] = 0x7e;
 reg_w(gspca_dev, 2);
}
