
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int reg_w (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static void i2c_w_vector(struct gspca_dev *gspca_dev,
   const __u8 buffer[][8], int len)
{
 for (;;) {
  reg_w(gspca_dev, 0x08, *buffer, 8);
  len -= 8;
  if (len <= 0)
   break;
  buffer++;
 }
}
