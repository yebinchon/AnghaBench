
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dev; } ;


 int SAA7113_I2C_BASE_WRITE ;
 int reg_w (int ,int,int ,int) ;

__attribute__((used)) static void spca506_Initi2c(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev->dev, 0x07, SAA7113_I2C_BASE_WRITE, 0x0004);
}
