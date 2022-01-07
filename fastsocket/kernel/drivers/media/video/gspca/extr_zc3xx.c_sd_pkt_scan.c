
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int* jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int JPEG_HDR_SZ ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (data[0] == 0xff && data[1] == 0xd8) {
  gspca_frame_add(gspca_dev, LAST_PACKET,
     ((void*)0), 0);

  gspca_frame_add(gspca_dev, FIRST_PACKET,
   sd->jpeg_hdr, JPEG_HDR_SZ);







  data += 18;
  len -= 18;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
