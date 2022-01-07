
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ autogain; } ;
struct gspca_dev {int ctrl_inac; int usb_err; scalar_t__ streaming; } ;
typedef scalar_t__ __s32 ;


 int EXPO_IDX ;
 int setautogain (struct gspca_dev*) ;

__attribute__((used)) static int sd_setautogain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->autogain = val;

 if (gspca_dev->streaming) {
  if (val)
   gspca_dev->ctrl_inac |= (1 << EXPO_IDX);
  else
   gspca_dev->ctrl_inac &= ~(1 << EXPO_IDX);
  setautogain(gspca_dev);
 }
 return gspca_dev->usb_err;
}
