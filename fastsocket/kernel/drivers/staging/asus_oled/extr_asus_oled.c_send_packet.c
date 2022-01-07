
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int dev; } ;
struct asus_oled_packet {int bitmap; } ;


 int dev_dbg (int *,char*,int) ;
 int memcpy (int ,char*,size_t) ;
 int setup_packet_header (struct asus_oled_packet*,int ,int ,int ,int ,int ,int ,int) ;
 int usb_bulk_msg (struct usb_device*,int ,struct asus_oled_packet*,int,int*,int) ;
 int usb_sndctrlpipe (struct usb_device*,int) ;

__attribute__((used)) static void send_packet(struct usb_device *udev,
   struct asus_oled_packet *packet,
   size_t offset, size_t len, char *buf, uint8_t b1,
   uint8_t b2, uint8_t b3, uint8_t b4, uint8_t b5,
   uint8_t b6) {
 int retval;
 int act_len;

 setup_packet_header(packet, b1, b2, b3, b4, b5, b6, 0x00);
 memcpy(packet->bitmap, buf + offset, len);

 retval = usb_bulk_msg(udev,
         usb_sndctrlpipe(udev, 2),
         packet,
         sizeof(struct asus_oled_packet),
         &act_len,
         -1);

 if (retval)
  dev_dbg(&udev->dev, "retval = %d\n", retval);
}
