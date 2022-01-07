
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int brightness; } ;
struct gspca_dev {int dummy; } ;


 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 val;

 val = sd->brightness;
 if (val < 8)
  val = 15 - val;
 else
  val = val - 8;
 sccb_write(gspca_dev, 0x55,
   0x0f | (val << 4));
}
