
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int D_CONF ;
 int PDEBUG (int ,char*,int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void set_led(struct gspca_dev *gspca_dev, int status)
{
 u8 data;

 PDEBUG(D_CONF, "led status: %d", status);

 data = reg_r(gspca_dev, 0x21);
 data |= 0x80;
 reg_w(gspca_dev, 0x21, data);

 data = reg_r(gspca_dev, 0x23);
 if (status)
  data |= 0x80;
 else
  data &= ~0x80;

 reg_w(gspca_dev, 0x23, data);

 if (!status) {
  data = reg_r(gspca_dev, 0x21);
  data &= ~0x80;
  reg_w(gspca_dev, 0x21, data);
 }
}
