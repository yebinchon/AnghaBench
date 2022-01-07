
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct sd {int video_mode; int current_mode; int orig_mode; TYPE_1__ mode; } ;
struct cam {int bulk; int bulk_nurbs; int bulk_size; int nmodes; TYPE_1__* cam_mode; } ;
struct gspca_dev {int* usb_buf; struct cam cam; } ;


 int D_ERR ;
 int D_PROBE ;
 int EIO ;
 int ENODEV ;
 int PDEBUG (int ,char*,...) ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_STV0680 ;
 int err (char*) ;
 int msleep (int) ;
 int stv0680_get_video_mode (struct gspca_dev*) ;
 int stv0680_handle_error (struct gspca_dev*,int) ;
 int stv0680_set_video_mode (struct gspca_dev*,int) ;
 int stv_sndctrl (struct gspca_dev*,int,int,int,int) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 int ret;
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;



 msleep(1000);


 if (stv_sndctrl(gspca_dev, 0, 0x88, 0x5678, 0x02) != 0x02 ||
     gspca_dev->usb_buf[0] != 0x56 || gspca_dev->usb_buf[1] != 0x78) {
  PDEBUG(D_ERR, "STV(e): camera ping failed!!");
  return stv0680_handle_error(gspca_dev, -ENODEV);
 }


 if (stv_sndctrl(gspca_dev, 2, 0x06, 0x0200, 0x09) != 0x09)
  return stv0680_handle_error(gspca_dev, -ENODEV);

 if (stv_sndctrl(gspca_dev, 2, 0x06, 0x0200, 0x22) != 0x22 ||
     gspca_dev->usb_buf[7] != 0xa0 || gspca_dev->usb_buf[8] != 0x23) {
  PDEBUG(D_ERR, "Could not get descriptor 0200.");
  return stv0680_handle_error(gspca_dev, -ENODEV);
 }
 if (stv_sndctrl(gspca_dev, 0, 0x8a, 0, 0x02) != 0x02)
  return stv0680_handle_error(gspca_dev, -ENODEV);
 if (stv_sndctrl(gspca_dev, 0, 0x8b, 0, 0x24) != 0x24)
  return stv0680_handle_error(gspca_dev, -ENODEV);
 if (stv_sndctrl(gspca_dev, 0, 0x85, 0, 0x10) != 0x10)
  return stv0680_handle_error(gspca_dev, -ENODEV);

 if (!(gspca_dev->usb_buf[7] & 0x09)) {
  PDEBUG(D_ERR, "Camera supports neither CIF nor QVGA mode");
  return -ENODEV;
 }
 if (gspca_dev->usb_buf[7] & 0x01)
  PDEBUG(D_PROBE, "Camera supports CIF mode");
 if (gspca_dev->usb_buf[7] & 0x02)
  PDEBUG(D_PROBE, "Camera supports VGA mode");
 if (gspca_dev->usb_buf[7] & 0x04)
  PDEBUG(D_PROBE, "Camera supports QCIF mode");
 if (gspca_dev->usb_buf[7] & 0x08)
  PDEBUG(D_PROBE, "Camera supports QVGA mode");

 if (gspca_dev->usb_buf[7] & 0x01)
  sd->video_mode = 0x00;
 else
  sd->video_mode = 0x03;


 PDEBUG(D_PROBE, "Firmware rev is %i.%i",
        gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
 PDEBUG(D_PROBE, "ASIC rev is %i.%i",
        gspca_dev->usb_buf[2], gspca_dev->usb_buf[3]);
 PDEBUG(D_PROBE, "Sensor ID is %i",
        (gspca_dev->usb_buf[4]*16) + (gspca_dev->usb_buf[5]>>4));


 ret = stv0680_get_video_mode(gspca_dev);
 if (ret < 0)
  return ret;
 sd->current_mode = sd->orig_mode = ret;

 ret = stv0680_set_video_mode(gspca_dev, sd->video_mode);
 if (ret < 0)
  return ret;


 if (stv_sndctrl(gspca_dev, 0, 0x8f, 0, 0x10) != 0x10)
  return stv0680_handle_error(gspca_dev, -EIO);

 cam->bulk = 1;
 cam->bulk_nurbs = 1;
 cam->bulk_size = (gspca_dev->usb_buf[0] << 24) |
    (gspca_dev->usb_buf[1] << 16) |
    (gspca_dev->usb_buf[2] << 8) |
    (gspca_dev->usb_buf[3]);
 sd->mode.width = (gspca_dev->usb_buf[4] << 8) |
    (gspca_dev->usb_buf[5]);
 sd->mode.height = (gspca_dev->usb_buf[6] << 8) |
     (gspca_dev->usb_buf[7]);
 sd->mode.pixelformat = V4L2_PIX_FMT_STV0680;
 sd->mode.field = V4L2_FIELD_NONE;
 sd->mode.bytesperline = sd->mode.width;
 sd->mode.sizeimage = cam->bulk_size;
 sd->mode.colorspace = V4L2_COLORSPACE_SRGB;



 cam->cam_mode = &sd->mode;
 cam->nmodes = 1;


 ret = stv0680_set_video_mode(gspca_dev, sd->orig_mode);
 if (ret < 0)
  return ret;

 if (stv_sndctrl(gspca_dev, 2, 0x06, 0x0100, 0x12) != 0x12 ||
     gspca_dev->usb_buf[8] != 0x53 || gspca_dev->usb_buf[9] != 0x05) {
  err("Could not get descriptor 0100.");
  return stv0680_handle_error(gspca_dev, -EIO);
 }

 return 0;
}
