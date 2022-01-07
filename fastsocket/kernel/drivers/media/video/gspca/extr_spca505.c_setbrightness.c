
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int brightness; } ;
struct gspca_dev {int dev; } ;


 int reg_write (int ,int,int,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 brightness = sd->brightness;

 reg_write(gspca_dev->dev, 0x05, 0x00, (255 - brightness) >> 6);
 reg_write(gspca_dev->dev, 0x05, 0x01, (255 - brightness) << 2);
}
