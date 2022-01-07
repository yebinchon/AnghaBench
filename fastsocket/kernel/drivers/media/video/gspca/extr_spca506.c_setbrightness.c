
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int brightness; } ;
struct gspca_dev {int dummy; } ;


 int SAA7113_bright ;
 int spca506_Initi2c (struct gspca_dev*) ;
 int spca506_WriteI2c (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 spca506_Initi2c(gspca_dev);
 spca506_WriteI2c(gspca_dev, sd->brightness, SAA7113_bright);
 spca506_WriteI2c(gspca_dev, 0x01, 0x09);
}
