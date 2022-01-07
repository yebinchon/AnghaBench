
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int) ;
 int set_led (struct gspca_dev*,int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, 0xe0, 0x01);
 set_led(gspca_dev, 0);
 reg_w(gspca_dev, 0xe0, 0x00);
}
