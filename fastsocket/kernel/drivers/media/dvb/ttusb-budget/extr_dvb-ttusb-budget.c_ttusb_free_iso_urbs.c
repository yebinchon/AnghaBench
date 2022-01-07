
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb {int iso_dma_handle; int iso_buffer; scalar_t__* iso_urb; } ;


 int FRAMES_PER_ISO_BUF ;
 int ISO_BUF_COUNT ;
 int ISO_FRAME_SIZE ;
 int pci_free_consistent (int *,int,int ,int ) ;
 int usb_free_urb (scalar_t__) ;

__attribute__((used)) static void ttusb_free_iso_urbs(struct ttusb *ttusb)
{
 int i;

 for (i = 0; i < ISO_BUF_COUNT; i++)
  if (ttusb->iso_urb[i])
   usb_free_urb(ttusb->iso_urb[i]);

 pci_free_consistent(((void*)0),
       ISO_FRAME_SIZE * FRAMES_PER_ISO_BUF *
       ISO_BUF_COUNT, ttusb->iso_buffer,
       ttusb->iso_dma_handle);
}
