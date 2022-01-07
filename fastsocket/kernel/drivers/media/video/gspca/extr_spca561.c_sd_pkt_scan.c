
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int chip_revision; } ;
struct gspca_dev {int input_dev; int last_packet_type; } ;


 int DISCARD_PACKET ;
 int D_ERR ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int KEY_CAMERA ;
 int LAST_PACKET ;
 int PDEBUG (int ,char*) ;
 int Rev012A ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 len--;
 switch (*data++) {
 case 0:
  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);


  if (len < 2) {
   PDEBUG(D_ERR, "Short SOF packet, ignoring");
   gspca_dev->last_packet_type = DISCARD_PACKET;
   return;
  }
  if (data[1] & 0x10) {

   gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  } else {

   if (sd->chip_revision == Rev012A) {
    data += 20;
    len -= 20;
   } else {
    data += 16;
    len -= 16;
   }
   gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  }
  return;
 case 0xff:
  return;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
