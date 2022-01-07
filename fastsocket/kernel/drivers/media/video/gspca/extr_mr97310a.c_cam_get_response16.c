
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int * usb_buf; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int ,int ,int ,int ) ;
 int mr_read (struct gspca_dev*,int) ;
 int mr_write (struct gspca_dev*,int) ;

__attribute__((used)) static int cam_get_response16(struct gspca_dev *gspca_dev, u8 reg, int verbose)
{
 int err_code;

 gspca_dev->usb_buf[0] = reg;
 err_code = mr_write(gspca_dev, 1);
 if (err_code < 0)
  return err_code;

 err_code = mr_read(gspca_dev, 16);
 if (err_code < 0)
  return err_code;

 if (verbose)
  PDEBUG(D_PROBE, "Register: %02x reads %02x%02x%02x", reg,
         gspca_dev->usb_buf[0],
         gspca_dev->usb_buf[1],
         gspca_dev->usb_buf[2]);

 return 0;
}
