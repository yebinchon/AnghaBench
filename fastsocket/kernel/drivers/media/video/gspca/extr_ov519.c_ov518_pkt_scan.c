
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int packet_nr; } ;
struct gspca_dev {scalar_t__ last_packet_type; } ;


 scalar_t__ DISCARD_PACKET ;
 int D_ERR ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int PDEBUG (int ,char*,int,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;
 int ov51x_handle_button (struct gspca_dev*,int) ;

__attribute__((used)) static void ov518_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;



 if ((!(data[0] | data[1] | data[2] | data[3] | data[5])) && data[6]) {
  ov51x_handle_button(gspca_dev, (data[6] >> 1) & 1);
  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
  gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
  sd->packet_nr = 0;
 }

 if (gspca_dev->last_packet_type == DISCARD_PACKET)
  return;


 if (len & 7) {
  len--;
  if (sd->packet_nr == data[len])
   sd->packet_nr++;



  else if (sd->packet_nr == 0 || data[len]) {
   PDEBUG(D_ERR, "Invalid packet nr: %d (expect: %d)",
    (int)data[len], (int)sd->packet_nr);
   gspca_dev->last_packet_type = DISCARD_PACKET;
   return;
  }
 }


 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
