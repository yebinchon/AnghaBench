
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int D_FRAM ;
 int PDEBUG (int ,char*,int,int) ;
 int msleep (int) ;
 int reg_r_12 (struct gspca_dev*,int,int,int) ;
 int reg_w_riv (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void spca504A_acknowledged_command(struct gspca_dev *gspca_dev,
   u8 req,
   u16 idx, u16 val, u16 endcode, u8 count)
{
 u16 status;

 reg_w_riv(gspca_dev, req, idx, val);
 status = reg_r_12(gspca_dev, 0x01, 0x0001, 1);
 if (gspca_dev->usb_err < 0)
  return;
 PDEBUG(D_FRAM, "Status 0x%04x Need 0x%04x", status, endcode);
 if (!count)
  return;
 count = 200;
 while (--count > 0) {
  msleep(10);


  status = reg_r_12(gspca_dev, 0x01, 0x0001, 1);
  if (status == endcode) {
   PDEBUG(D_FRAM, "status 0x%04x after wait %d",
    status, 200 - count);
    break;
  }
 }
}
