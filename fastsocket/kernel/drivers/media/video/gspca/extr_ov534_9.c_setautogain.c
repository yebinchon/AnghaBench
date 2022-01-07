
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ autogain; } ;
struct gspca_dev {int dummy; } ;


 int sccb_read (struct gspca_dev*,int) ;
 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;


 val = sccb_read(gspca_dev, 0x13);
 sccb_write(gspca_dev, 0xff, 0x00);
 if (sd->autogain)
  val |= 0x05;
 else
  val &= 0xfa;
 sccb_write(gspca_dev, 0x13, val);
}
