
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef unsigned char __u8 ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,unsigned char*,int) ;
 unsigned char* sn9c2028_find_sof (struct gspca_dev*,unsigned char*,int) ;
 unsigned char* sn9c2028_sof_marker ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   __u8 *data,
   int len)
{
 unsigned char *sof;

 sof = sn9c2028_find_sof(gspca_dev, data, len);
 if (sof) {
  int n;


  n = sof - data;
  if (n > sizeof sn9c2028_sof_marker)
   n -= sizeof sn9c2028_sof_marker;
  else
   n = 0;
  gspca_frame_add(gspca_dev, LAST_PACKET, data, n);

  gspca_frame_add(gspca_dev, FIRST_PACKET,
   sn9c2028_sof_marker, sizeof sn9c2028_sof_marker);
  len -= sof - data;
  data = sof;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
