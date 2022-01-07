
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ freqfltr; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setfreqfltr(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->freqfltr == 0)
  sccb_reg_write(gspca_dev, 0x2b, 0x00);
 else
  sccb_reg_write(gspca_dev, 0x2b, 0x9e);
}
