
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int D_USBI ;
 int D_USBO ;
 int OV534_REG_STATUS ;
 int PDEBUG (int,char*,int,int) ;
 int reg_r (struct gspca_dev*,int ) ;

__attribute__((used)) static int sccb_check_status(struct gspca_dev *gspca_dev)
{
 u8 data;
 int i;

 for (i = 0; i < 5; i++) {
  data = reg_r(gspca_dev, OV534_REG_STATUS);

  switch (data) {
  case 0x00:
   return 1;
  case 0x04:
   return 0;
  case 0x03:
   break;
  default:
   PDEBUG(D_USBI|D_USBO,
    "sccb status 0x%02x, attempt %d/5",
    data, i + 1);
  }
 }
 return 0;
}
