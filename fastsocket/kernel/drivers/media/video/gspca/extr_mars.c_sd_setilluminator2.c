
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int usb_err; } ;
typedef scalar_t__ __s32 ;
struct TYPE_2__ {scalar_t__ val; } ;


 size_t ILLUM_BOT ;
 size_t ILLUM_TOP ;
 int setilluminators (struct gspca_dev*) ;

__attribute__((used)) static int sd_setilluminator2(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;


 sd->ctrls[ILLUM_BOT].val = val;
 if (val)
  sd->ctrls[ILLUM_TOP].val = 0;
 setilluminators(gspca_dev);
 return gspca_dev->usb_err;
}
