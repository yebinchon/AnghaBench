
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int dev; } ;


 int reg_write (int ,int,int,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_write(gspca_dev->dev, 0x00, 0x00,
      (sd->contrast >> 8) & 0xff);
 reg_write(gspca_dev->dev, 0x00, 0x01,
      sd->contrast & 0xff);
}
