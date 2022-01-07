
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int width; int height; } ;
struct sd {TYPE_1__ gspca_dev; scalar_t__ first_frame; } ;
struct gspca_dev {int image_len; int last_packet_type; } ;


 int DISCARD_PACKET ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int OVFX2_BULK_SIZE ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void ovfx2_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);


 if (len < OVFX2_BULK_SIZE) {


  if (sd->first_frame) {
   sd->first_frame--;
   if (gspca_dev->image_len <
      sd->gspca_dev.width * sd->gspca_dev.height)
    gspca_dev->last_packet_type = DISCARD_PACKET;
  }
  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
  gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
 }
}
