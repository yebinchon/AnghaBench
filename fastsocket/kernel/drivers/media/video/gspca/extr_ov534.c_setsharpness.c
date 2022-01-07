
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int sharpness; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_write (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;

 val = sd->sharpness;
 sccb_reg_write(gspca_dev, 0x91, val);
 sccb_reg_write(gspca_dev, 0x8e, val);
}
