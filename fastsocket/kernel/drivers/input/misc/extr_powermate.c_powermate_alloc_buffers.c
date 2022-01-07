
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct powermate_device {void* configcr; int configcr_dma; void* data; int data_dma; } ;


 int GFP_ATOMIC ;
 int POWERMATE_PAYLOAD_SIZE_MAX ;
 void* usb_buffer_alloc (struct usb_device*,int,int ,int *) ;

__attribute__((used)) static int powermate_alloc_buffers(struct usb_device *udev, struct powermate_device *pm)
{
 pm->data = usb_buffer_alloc(udev, POWERMATE_PAYLOAD_SIZE_MAX,
        GFP_ATOMIC, &pm->data_dma);
 if (!pm->data)
  return -1;

 pm->configcr = usb_buffer_alloc(udev, sizeof(*(pm->configcr)),
     GFP_ATOMIC, &pm->configcr_dma);
 if (!pm->configcr)
  return -1;

 return 0;
}
