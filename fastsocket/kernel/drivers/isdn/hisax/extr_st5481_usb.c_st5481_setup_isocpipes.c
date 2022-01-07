
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {int * transfer_buffer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int fill_isoc_urb (struct urb*,struct usb_device*,unsigned int,unsigned char*,int,int,int ,void*) ;
 int kfree (int *) ;
 unsigned char* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_free_urb (struct urb*) ;

int
st5481_setup_isocpipes(struct urb* urb[2], struct usb_device *dev,
      unsigned int pipe, int num_packets,
      int packet_size, int buf_size,
      usb_complete_t complete, void *context)
{
 int j, retval;
 unsigned char *buf;

 for (j = 0; j < 2; j++) {
  retval = -ENOMEM;
  urb[j] = usb_alloc_urb(num_packets, GFP_KERNEL);
  if (!urb[j])
   goto err;


  buf = kmalloc(buf_size, GFP_KERNEL);
  if (!buf)
   goto err;


  fill_isoc_urb(urb[j], dev, pipe, buf,
         num_packets, packet_size, complete,
         context);
 }
 return 0;

 err:
 for (j = 0; j < 2; j++) {
  if (urb[j]) {
   kfree(urb[j]->transfer_buffer);
   urb[j]->transfer_buffer = ((void*)0);
   usb_free_urb(urb[j]);
   urb[j] = ((void*)0);
  }
 }
 return retval;
}
