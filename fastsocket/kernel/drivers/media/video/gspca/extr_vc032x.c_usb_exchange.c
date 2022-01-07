
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int i2c_write (struct gspca_dev*,int const,int const*,int) ;
 int msleep (int ) ;
 int reg_w (struct gspca_dev*,int,int const,int const) ;

__attribute__((used)) static void usb_exchange(struct gspca_dev *gspca_dev,
   const u8 data[][4])
{
 int i = 0;

 for (;;) {
  switch (data[i][3]) {
  default:
   return;
  case 0xcc:
   reg_w(gspca_dev, 0xa0, data[i][2],
     (data[i][0]) << 8 | data[i][1]);
   break;
  case 0xaa:
   i2c_write(gspca_dev, data[i][1], &data[i][2], 1);
   break;
  case 0xbb:
   i2c_write(gspca_dev, data[i][0], &data[i][1], 2);
   break;
  case 0xdd:
   msleep(data[i][1] * 256 + data[i][2] + 10);
   break;
  }
  i++;
 }

}
