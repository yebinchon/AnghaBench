
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ power; int initialized; scalar_t__ user; } ;
struct file {int dummy; } ;


 int DBG_IO ;
 int EBUSY ;
 scalar_t__ ISOC_MODE_COMPRESS ;
 int PDEBUG (int ,char*) ;
 scalar_t__ isoc_mode ;
 scalar_t__ power_on_at_open ;
 int usbvision_begin_streaming (struct usb_usbvision*) ;
 int usbvision_decompress_alloc (struct usb_usbvision*) ;
 int usbvision_decompress_free (struct usb_usbvision*) ;
 int usbvision_empty_framequeues (struct usb_usbvision*) ;
 int usbvision_i2c_register (struct usb_usbvision*) ;
 int usbvision_i2c_unregister (struct usb_usbvision*) ;
 int usbvision_init_isoc (struct usb_usbvision*) ;
 int usbvision_muxsel (struct usb_usbvision*,int ) ;
 int usbvision_power_off (struct usb_usbvision*) ;
 int usbvision_power_on (struct usb_usbvision*) ;
 int usbvision_reset_power_off_timer (struct usb_usbvision*) ;
 int usbvision_scratch_alloc (struct usb_usbvision*) ;
 int usbvision_scratch_free (struct usb_usbvision*) ;
 int usbvision_setup (struct usb_usbvision*,scalar_t__) ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int usbvision_v4l2_open(struct file *file)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 int err_code = 0;

 PDEBUG(DBG_IO, "open");

 usbvision_reset_power_off_timer(usbvision);

 if (usbvision->user)
  err_code = -EBUSY;
 else {

  err_code = usbvision_scratch_alloc(usbvision);
  if (isoc_mode == ISOC_MODE_COMPRESS) {


   err_code = usbvision_decompress_alloc(usbvision);
  }
  if (err_code) {

   usbvision_scratch_free(usbvision);
   usbvision_decompress_free(usbvision);
  }
 }


 if (!err_code) {
  if (usbvision->power == 0) {
   usbvision_power_on(usbvision);
   usbvision_i2c_register(usbvision);
  }


  if (!usbvision->initialized) {
   int setup_ok = 0;
   setup_ok = usbvision_setup(usbvision, isoc_mode);
   if (setup_ok)
    usbvision->initialized = 1;
   else
    err_code = -EBUSY;
  }

  if (!err_code) {
   usbvision_begin_streaming(usbvision);
   err_code = usbvision_init_isoc(usbvision);

   usbvision_muxsel(usbvision, 0);
   usbvision->user++;
  } else {
   if (power_on_at_open) {
    usbvision_i2c_unregister(usbvision);
    usbvision_power_off(usbvision);
    usbvision->initialized = 0;
   }
  }
 }


 usbvision_empty_framequeues(usbvision);

 PDEBUG(DBG_IO, "success");
 return err_code;
}
