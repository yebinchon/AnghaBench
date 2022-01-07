
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct sd {int dummy; } ;
struct gspca_dev {int vdev; } ;
typedef scalar_t__ s32 ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int ) ;
 int THIS_MODULE ;
 scalar_t__ gspca_dev_probe (struct usb_interface*,struct usb_device_id const*,int *,int,int ) ;
 int sd_desc_mi1320 ;
 struct gspca_dev* usb_get_intfdata (struct usb_interface*) ;
 int video_device_node_name (int *) ;

__attribute__((used)) static int sd_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct gspca_dev *gspca_dev;
 s32 ret;

 ret = gspca_dev_probe(intf, id,
   &sd_desc_mi1320, sizeof(struct sd), THIS_MODULE);

 if (ret >= 0) {
  gspca_dev = usb_get_intfdata(intf);

  PDEBUG(D_PROBE,
   "Camera is now controlling video device %s",
   video_device_node_name(&gspca_dev->vdev));
 }

 return ret;
}
