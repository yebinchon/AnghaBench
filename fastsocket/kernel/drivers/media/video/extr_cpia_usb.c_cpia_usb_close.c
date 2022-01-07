
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_cpia {int present; scalar_t__ open; } ;


 int ENODEV ;
 int cpia_usb_free_resources (struct usb_cpia*,int ) ;

__attribute__((used)) static int cpia_usb_close(void *privdata)
{
 struct usb_cpia *ucpia = (struct usb_cpia *) privdata;

 if(!ucpia)
  return -ENODEV;

 ucpia->open = 0;



 cpia_usb_free_resources(ucpia, ucpia->present);

 return 0;
}
