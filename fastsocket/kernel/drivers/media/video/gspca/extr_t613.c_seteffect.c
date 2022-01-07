
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {size_t effect; } ;
struct gspca_dev {int dummy; } ;


 int D_CONF ;
 int PDEBUG (int ,char*) ;
 int * effects_table ;
 int reg_w (struct gspca_dev*,int) ;
 int reg_w_buf (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void seteffect(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w_buf(gspca_dev, effects_table[sd->effect],
    sizeof effects_table[0]);
 if (sd->effect == 1 || sd->effect == 5) {
  PDEBUG(D_CONF,
         "This effect have been disabled for webcam \"safety\"");
  return;
 }

 if (sd->effect == 1 || sd->effect == 4)
  reg_w(gspca_dev, 0x4aa6);
 else
  reg_w(gspca_dev, 0xfaa6);
}
