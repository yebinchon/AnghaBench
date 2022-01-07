
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_jpegcompression {int jpeg_markers; int quality; } ;
struct sd {int quality; } ;
struct gspca_dev {int dummy; } ;


 int V4L2_JPEG_MARKER_DHT ;
 int V4L2_JPEG_MARKER_DQT ;
 int memset (struct v4l2_jpegcompression*,int ,int) ;

__attribute__((used)) static int sd_get_jcomp(struct gspca_dev *gspca_dev,
   struct v4l2_jpegcompression *jcomp)
{
 struct sd *sd = (struct sd *) gspca_dev;

 memset(jcomp, 0, sizeof *jcomp);
 jcomp->quality = sd->quality;
 jcomp->jpeg_markers = V4L2_JPEG_MARKER_DHT
   | V4L2_JPEG_MARKER_DQT;
 return 0;
}
