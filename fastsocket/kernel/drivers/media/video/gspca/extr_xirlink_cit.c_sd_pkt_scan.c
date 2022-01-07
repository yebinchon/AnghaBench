
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct sd {int sof_len; } ;
struct gspca_dev {int dummy; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 unsigned char* cit_find_sof (struct gspca_dev*,unsigned char*,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,unsigned char*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned char *sof;

 sof = cit_find_sof(gspca_dev, data, len);
 if (sof) {
  int n;


  n = sof - data;
  if (n > sd->sof_len)
   n -= sd->sof_len;
  else
   n = 0;
  gspca_frame_add(gspca_dev, LAST_PACKET,
    data, n);
  gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
  len -= sof - data;
  data = sof;
 }

 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
