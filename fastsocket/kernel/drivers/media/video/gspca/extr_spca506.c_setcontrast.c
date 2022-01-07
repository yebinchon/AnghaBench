
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int dummy; } ;


 int SAA7113_contrast ;
 int spca506_Initi2c (struct gspca_dev*) ;
 int spca506_WriteI2c (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 spca506_Initi2c(gspca_dev);
 spca506_WriteI2c(gspca_dev, sd->contrast, SAA7113_contrast);
 spca506_WriteI2c(gspca_dev, 0x01, 0x09);
}
