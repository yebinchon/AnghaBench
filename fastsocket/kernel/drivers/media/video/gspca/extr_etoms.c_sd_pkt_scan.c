
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int last_packet_type; } ;


 int DISCARD_PACKET ;
 int D_FRAM ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int PDEBUG (int ,char*,int,...) ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 int seqframe;

 seqframe = data[0] & 0x3f;
 len = (int) (((data[0] & 0xc0) << 2) | data[1]);
 if (seqframe == 0x3f) {
  PDEBUG(D_FRAM,
         "header packet found datalength %d !!", len);
  PDEBUG(D_FRAM, "G %d R %d G %d B %d",
         data[2], data[3], data[4], data[5]);
  data += 30;

  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
  gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  return;
 }
 if (len) {
  data += 8;
  gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
 } else {
  gspca_dev->last_packet_type = DISCARD_PACKET;
 }
}
