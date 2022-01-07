
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int D_ERR ;
 int ET_GPIO_OUT ;
 int Et_WaitStatus (struct gspca_dev*) ;
 int PDEBUG (int ,char*) ;
 int reg_w_val (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int et_video(struct gspca_dev *gspca_dev,
      int on)
{
 int ret;

 reg_w_val(gspca_dev, ET_GPIO_OUT,
    on ? 0x10
       : 0);
 ret = Et_WaitStatus(gspca_dev);
 if (ret != 0)
  PDEBUG(D_ERR, "timeout video on/off");
 return ret;
}
