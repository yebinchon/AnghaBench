
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_picture {int whiteness; int hue; int colour; int brightness; int contrast; } ;
struct usb_ov511 {int dummy; } ;


 scalar_t__ FATAL_ERROR (int) ;
 int PDEBUG (int,char*) ;
 int sensor_get_brightness (struct usb_ov511*,int *) ;
 int sensor_get_contrast (struct usb_ov511*,int *) ;
 int sensor_get_hue (struct usb_ov511*,int *) ;
 int sensor_get_saturation (struct usb_ov511*,int *) ;

__attribute__((used)) static int
sensor_get_picture(struct usb_ov511 *ov, struct video_picture *p)
{
 int rc;

 PDEBUG(4, "sensor_get_picture");




 rc = sensor_get_contrast(ov, &(p->contrast));
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_get_brightness(ov, &(p->brightness));
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_get_saturation(ov, &(p->colour));
 if (FATAL_ERROR(rc))
  return rc;

 rc = sensor_get_hue(ov, &(p->hue));
 if (FATAL_ERROR(rc))
  return rc;

 p->whiteness = 105 << 8;

 return 0;
}
