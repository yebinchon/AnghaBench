
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int colStart; int colEnd; int rowStart; int rowEnd; } ;
struct TYPE_4__ {int videoSize; int subSample; int yuvOrder; } ;
struct TYPE_6__ {TYPE_2__ roi; TYPE_1__ format; } ;
struct sd {int fps; int cam_exposure; TYPE_3__ params; } ;
struct gspca_dev {int* image; int image_len; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int MAGIC_0 ;
 int MAGIC_1 ;
 int atomic_set (int *,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;


 if (len >= 64 &&
     data[0] == MAGIC_0 && data[1] == MAGIC_1 &&
     data[16] == sd->params.format.videoSize &&
     data[17] == sd->params.format.subSample &&
     data[18] == sd->params.format.yuvOrder &&
     data[24] == sd->params.roi.colStart &&
     data[25] == sd->params.roi.colEnd &&
     data[26] == sd->params.roi.rowStart &&
     data[27] == sd->params.roi.rowEnd) {
  u8 *image;

  atomic_set(&sd->cam_exposure, data[39] * 2);
  atomic_set(&sd->fps, data[41]);


  image = gspca_dev->image;
  if (image != ((void*)0) &&
      gspca_dev->image_len > 4 &&
      image[gspca_dev->image_len - 4] == 0xff &&
      image[gspca_dev->image_len - 3] == 0xff &&
      image[gspca_dev->image_len - 2] == 0xff &&
      image[gspca_dev->image_len - 1] == 0xff)
   gspca_frame_add(gspca_dev, LAST_PACKET,
      ((void*)0), 0);

  gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  return;
 }

 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
