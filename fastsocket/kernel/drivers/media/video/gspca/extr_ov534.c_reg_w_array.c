
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int ov534_reg_write (struct gspca_dev*,int const,int const) ;

__attribute__((used)) static void reg_w_array(struct gspca_dev *gspca_dev,
   const u8 (*data)[2], int len)
{
 while (--len >= 0) {
  ov534_reg_write(gspca_dev, (*data)[0], (*data)[1]);
  data++;
 }
}
