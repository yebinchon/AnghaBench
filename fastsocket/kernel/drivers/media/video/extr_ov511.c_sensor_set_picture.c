
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_picture {int hue; int colour; int brightness; int contrast; int whiteness; } ;
struct usb_ov511 {int whiteness; } ;


 scalar_t__ FATAL_ERROR (int) ;
 int PDEBUG (int,char*) ;
 int sensor_set_brightness (struct usb_ov511*,int ) ;
 int sensor_set_contrast (struct usb_ov511*,int ) ;
 int sensor_set_hue (struct usb_ov511*,int ) ;
 int sensor_set_saturation (struct usb_ov511*,int ) ;

__attribute__((used)) static int
sensor_set_picture(struct usb_ov511 *ov, struct video_picture *p)
{
 int rc;

 PDEBUG(4, "sensor_set_picture");

 ov->whiteness = p->whiteness;




 rc = sensor_set_contrast(ov, p->contrast);
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_set_brightness(ov, p->brightness);
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_set_saturation(ov, p->colour);
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_set_hue(ov, p->hue);
 if (FATAL_ERROR(rc))
  return rc;

 return 0;
}
