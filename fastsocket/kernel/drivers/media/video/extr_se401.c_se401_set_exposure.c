
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int brightness; int expose_h; int expose_m; int expose_l; } ;


 int flickerless ;

__attribute__((used)) static void se401_set_exposure(struct usb_se401 *se401, int brightness)
{
 int integration = brightness << 5;

 if (flickerless == 50)
  integration = integration-integration % 106667;
 if (flickerless == 60)
  integration = integration-integration % 88889;
 se401->brightness = integration >> 5;
 se401->expose_h = (integration >> 16) & 0xff;
 se401->expose_m = (integration >> 8) & 0xff;
 se401->expose_l = integration & 0xff;
}
