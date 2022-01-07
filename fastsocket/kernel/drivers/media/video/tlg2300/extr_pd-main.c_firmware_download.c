
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {TYPE_2__** ep_out; int dev; } ;
struct firmware {size_t size; int data; } ;
struct TYPE_3__ {size_t wMaxPacketSize; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int firmware_name ;
 int kfree (void*) ;
 void* kmemdup (int ,size_t,int ) ;
 int log (char*,int) ;
 int min (size_t,size_t) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int usb_bulk_msg (struct usb_device*,int ,void*,int ,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int firmware_download(struct usb_device *udev)
{
 int ret = 0, actual_length;
 const struct firmware *fw = ((void*)0);
 void *fwbuf = ((void*)0);
 size_t fwlength = 0, offset;
 size_t max_packet_size;

 ret = request_firmware(&fw, firmware_name, &udev->dev);
 if (ret) {
  log("download err : %d", ret);
  return ret;
 }

 fwlength = fw->size;

 fwbuf = kmemdup(fw->data, fwlength, GFP_KERNEL);
 if (!fwbuf) {
  ret = -ENOMEM;
  goto out;
 }

 max_packet_size = udev->ep_out[0x1]->desc.wMaxPacketSize;
 log("\t\t download size : %d", (int)max_packet_size);

 for (offset = 0; offset < fwlength; offset += max_packet_size) {
  actual_length = 0;
  ret = usb_bulk_msg(udev,
    usb_sndbulkpipe(udev, 0x01),
    fwbuf + offset,
    min(max_packet_size, fwlength - offset),
    &actual_length,
    HZ * 10);
  if (ret)
   break;
 }
 kfree(fwbuf);
out:
 release_firmware(fw);
 return ret;
}
