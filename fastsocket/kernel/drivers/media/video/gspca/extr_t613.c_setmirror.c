
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ mirror; } ;
struct gspca_dev {int dummy; } ;


 int reg_w_buf (struct gspca_dev*,int*,int) ;

__attribute__((used)) static void setmirror(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 hflipcmd[8] =
  {0x62, 0x07, 0x63, 0x03, 0x64, 0x00, 0x60, 0x09};

 if (sd->mirror)
  hflipcmd[3] = 0x01;

 reg_w_buf(gspca_dev, hflipcmd, sizeof hflipcmd);
}
