
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int brightness; } ;
struct gspca_dev {int dev; } ;


 int reg_write (int ,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 brightness = sd->brightness;


 reg_write(gspca_dev->dev, 0x8651, brightness);
 reg_write(gspca_dev->dev, 0x8652, brightness);
 reg_write(gspca_dev->dev, 0x8653, brightness);
 reg_write(gspca_dev->dev, 0x8654, brightness);
}
