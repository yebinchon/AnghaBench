
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
 scalar_t__ STKHDRSZ ;
 int gspca_frame_add (struct gspca_dev*,int ,...) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static unsigned char ffd9[] = {0xff, 0xd9};
 if (data[0] == 0xff && data[1] == 0xfe) {
  gspca_frame_add(gspca_dev, LAST_PACKET,
    ffd9, 2);


  gspca_frame_add(gspca_dev, FIRST_PACKET,
   sd->jpeg_hdr, JPEG_HDR_SZ);



  data += 12;
  len -= 12;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
