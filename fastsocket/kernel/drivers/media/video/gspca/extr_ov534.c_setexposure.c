
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int exposure; scalar_t__ aec; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;

 if (sd->aec)
  return;







 val = sd->exposure;
 sccb_reg_write(gspca_dev, 0x08, val >> 7);
 sccb_reg_write(gspca_dev, 0x10, val << 1);
}
