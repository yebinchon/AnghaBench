
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 int pkt_type;

 if (data[0] == 0x5a) {



  return;
 }
 data += 2;
 len -= 2;
 if (data[0] == 0xff && data[1] == 0xd8)
  pkt_type = FIRST_PACKET;
 else if (data[len - 2] == 0xff && data[len - 1] == 0xd9)
  pkt_type = LAST_PACKET;
 else
  pkt_type = INTER_PACKET;
 gspca_frame_add(gspca_dev, pkt_type, data, len);
}
