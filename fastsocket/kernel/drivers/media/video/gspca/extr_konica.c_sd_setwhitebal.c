
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int whitebal; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int WHITEBAL_REG ;
 int konica_stream_off (struct gspca_dev*) ;
 int konica_stream_on (struct gspca_dev*) ;
 int reg_w (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static int sd_setwhitebal(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->whitebal = val;
 if (gspca_dev->streaming) {
  konica_stream_off(gspca_dev);
  reg_w(gspca_dev, sd->whitebal, WHITEBAL_REG);
  konica_stream_on(gspca_dev);
 }
 return 0;
}
