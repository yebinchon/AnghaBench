
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int* jpeg_hdr; scalar_t__ ag_cnt; int avg_lum; } ;
struct gspca_dev {int last_packet_type; int* image; int image_len; } ;



 int const FIRST_PACKET ;
 int const INTER_PACKET ;
 int JPEG_HDR_SZ ;

 int atomic_set (int *,int) ;
 int gspca_frame_add (struct gspca_dev*,int const,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int sof, avg_lum;






 switch (gspca_dev->last_packet_type) {
 case 129:
  sof = len - 64;
  if (sof >= 0 && data[sof] == 0xff && data[sof + 1] == 0xd9)
   gspca_frame_add(gspca_dev, 128, ((void*)0), 0);
  return;
 case 128:
  gspca_frame_add(gspca_dev, FIRST_PACKET,
    sd->jpeg_hdr, JPEG_HDR_SZ);
  break;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);

 data = gspca_dev->image;
 if (data == ((void*)0))
  return;
 sof = gspca_dev->image_len - 64;
 if (data[sof] != 0xff
  || data[sof + 1] != 0xd9)
  return;


 gspca_dev->image_len = sof + 2;
 gspca_frame_add(gspca_dev, 128, ((void*)0), 0);
 if (sd->ag_cnt < 0)
  return;




 avg_lum = ((data[sof + 29] << 8) | data[sof + 30]) >> 6;

 avg_lum += ((data[sof + 33] << 8) | data[sof + 34]) >> 6;

 avg_lum += ((data[sof + 25] << 8) | data[sof + 26]) >> 6;

 avg_lum += ((data[sof + 37] << 8) | data[sof + 38]) >> 6;

 avg_lum += ((data[sof + 31] << 8) | data[sof + 32]) >> 4;
 avg_lum >>= 4;
 atomic_set(&sd->avg_lum, avg_lum);
}
