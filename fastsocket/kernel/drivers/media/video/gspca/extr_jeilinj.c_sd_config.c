
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int idProduct; int idVendor; } ;
struct sd {int quality; int jpegqual; int work_struct; } ;
struct cam {int nmodes; int bulk; int bulk_size; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int D_PROBE ;
 int INIT_WORK (int *,int ) ;
 int PDEBUG (int ,char*,int ,int ) ;
 int jlj_dostream ;
 int jlj_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct cam *cam = &gspca_dev->cam;
 struct sd *dev = (struct sd *) gspca_dev;

 dev->quality = 85;
 dev->jpegqual = 85;
 PDEBUG(D_PROBE,
  "JEILINJ camera detected"
  " (vid/pid 0x%04X:0x%04X)", id->idVendor, id->idProduct);
 cam->cam_mode = jlj_mode;
 cam->nmodes = 1;
 cam->bulk = 1;

 cam->bulk_size = 32;
 INIT_WORK(&dev->work_struct, jlj_dostream);
 return 0;
}
