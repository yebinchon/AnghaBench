
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int dummy; } ;


 int sccb_reg_write (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sccb_reg_write(gspca_dev, 0x9c, sd->contrast);
}
