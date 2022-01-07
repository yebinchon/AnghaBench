
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ hflip; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_read (struct gspca_dev*,int) ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sethflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->hflip == 0)
  sccb_reg_write(gspca_dev, 0x0c,
    sccb_reg_read(gspca_dev, 0x0c) | 0x40);
 else
  sccb_reg_write(gspca_dev, 0x0c,
    sccb_reg_read(gspca_dev, 0x0c) & ~0x40);
}
