
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int idProduct; int idVendor; } ;
struct sd {int work_struct; } ;
struct cam {int nmodes; int bulk_size; int bulk; int cam_mode; } ;
struct gspca_dev {scalar_t__* usb_buf; struct cam cam; } ;


 int D_ERR ;
 int D_PROBE ;
 int INIT_WORK (int *,int ) ;
 int PDEBUG (int ,char*,...) ;
 int SQ905C_GET_ID ;
 int sq905c_command (struct gspca_dev*,int ,int ) ;
 int sq905c_dostream ;
 int sq905c_mode ;
 int sq905c_read (struct gspca_dev*,int,int ,int) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct cam *cam = &gspca_dev->cam;
 struct sd *dev = (struct sd *) gspca_dev;
 int ret;

 PDEBUG(D_PROBE,
  "SQ9050 camera detected"
  " (vid/pid 0x%04X:0x%04X)", id->idVendor, id->idProduct);

 ret = sq905c_command(gspca_dev, SQ905C_GET_ID, 0);
 if (ret < 0) {
  PDEBUG(D_ERR, "Get version command failed");
  return ret;
 }

 ret = sq905c_read(gspca_dev, 0xf5, 0, 20);
 if (ret < 0) {
  PDEBUG(D_ERR, "Reading version command failed");
  return ret;
 }

 PDEBUG(D_PROBE,
        "SQ9050 ID string: %02x - %02x %02x %02x %02x %02x %02x",
  gspca_dev->usb_buf[3],
  gspca_dev->usb_buf[14], gspca_dev->usb_buf[15],
  gspca_dev->usb_buf[16], gspca_dev->usb_buf[17],
  gspca_dev->usb_buf[18], gspca_dev->usb_buf[19]);

 cam->cam_mode = sq905c_mode;
 cam->nmodes = 2;
 if (gspca_dev->usb_buf[15] == 0)
  cam->nmodes = 1;

 cam->bulk_size = 32;
 cam->bulk = 1;
 INIT_WORK(&dev->work_struct, sq905c_dostream);
 return 0;
}
