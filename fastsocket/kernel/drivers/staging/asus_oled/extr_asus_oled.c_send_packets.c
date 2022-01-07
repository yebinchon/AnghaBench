
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int dev; } ;
struct asus_oled_packet {int bitmap; } ;



 size_t ASUS_OLED_PACKET_BUF_SIZE ;


 int dev_dbg (int *,char*,int) ;
 int memcpy (int ,char*,size_t) ;
 int setup_packet_header (struct asus_oled_packet*,int,int,int,int,int,int,int) ;
 int usb_bulk_msg (struct usb_device*,int ,struct asus_oled_packet*,int,int*,int) ;
 int usb_sndctrlpipe (struct usb_device*,int) ;

__attribute__((used)) static void send_packets(struct usb_device *udev,
    struct asus_oled_packet *packet,
    char *buf, uint8_t p_type, size_t p_num)
{
 size_t i;
 int act_len;

 for (i = 0; i < p_num; i++) {
  int retval;

  switch (p_type) {
  case 129:
   setup_packet_header(packet, 0x40, 0x80, p_num,
         i + 1, 0x00, 0x01, 0xff);
   break;
  case 128:
   setup_packet_header(packet, 0x10 + i, 0x80, 0x01,
         0x01, 0x00, 0x01, 0x00);
   break;
  case 130:
   setup_packet_header(packet, 0x10 + i, 0x80, 0x01,
         0x01, 0x00, 0x00, 0xff);
   break;
  }

  memcpy(packet->bitmap, buf + (ASUS_OLED_PACKET_BUF_SIZE*i),
         ASUS_OLED_PACKET_BUF_SIZE);

  retval = usb_bulk_msg(udev, usb_sndctrlpipe(udev, 2),
          packet, sizeof(struct asus_oled_packet),
          &act_len, -1);

  if (retval)
   dev_dbg(&udev->dev, "retval = %d\n", retval);
 }
}
