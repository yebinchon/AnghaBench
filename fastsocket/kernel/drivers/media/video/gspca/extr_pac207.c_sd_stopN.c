
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int pac207_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 pac207_write_reg(gspca_dev, 0x40, 0x00);
 pac207_write_reg(gspca_dev, 0x41, 0x00);
 pac207_write_reg(gspca_dev, 0x0f, 0x00);
}
