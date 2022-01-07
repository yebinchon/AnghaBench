
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int idProduct; int idVendor; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int D_PROBE ;
 int FREQ_DEF ;
 int PDEBUG (int ,char*,int ,int ) ;
 int mode ;
 int reset_camera_params (struct gspca_dev*) ;
 int sd_setfreq (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct cam *cam;

 reset_camera_params(gspca_dev);

 PDEBUG(D_PROBE, "cpia CPiA camera detected (vid/pid 0x%04X:0x%04X)",
        id->idVendor, id->idProduct);

 cam = &gspca_dev->cam;
 cam->cam_mode = mode;
 cam->nmodes = ARRAY_SIZE(mode);

 sd_setfreq(gspca_dev, FREQ_DEF);

 return 0;
}
