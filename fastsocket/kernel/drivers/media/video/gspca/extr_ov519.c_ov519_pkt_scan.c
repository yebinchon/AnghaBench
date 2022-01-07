
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {void* last_packet_type; } ;


 void* DISCARD_PACKET ;
 int FIRST_PACKET ;
 int HDRSZ ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;
 int ov51x_handle_button (struct gspca_dev*,int) ;

__attribute__((used)) static void ov519_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 if (data[0] == 0xff && data[1] == 0xff && data[2] == 0xff) {
  switch (data[3]) {
  case 0x50:




   data += 16;
   len -= 16;

   if (data[0] == 0xff || data[1] == 0xd8)
    gspca_frame_add(gspca_dev, FIRST_PACKET,
      data, len);
   else
    gspca_dev->last_packet_type = DISCARD_PACKET;
   return;
  case 0x51:
   ov51x_handle_button(gspca_dev, data[11] & 1);
   if (data[9] != 0)
    gspca_dev->last_packet_type = DISCARD_PACKET;
   gspca_frame_add(gspca_dev, LAST_PACKET,
     ((void*)0), 0);
   return;
  }
 }


 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
