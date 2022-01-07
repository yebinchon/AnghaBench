
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;
typedef int RGBG ;


 int ET_G_RED ;
 int memset (int*,int,int) ;
 int reg_w (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 RGBG[] = { 0x80, 0x80, 0x80, 0x80, 0x00, 0x00 };
 __u8 contrast = sd->contrast;

 memset(RGBG, contrast, sizeof(RGBG) - 2);
 reg_w(gspca_dev, ET_G_RED, RGBG, 6);
}
