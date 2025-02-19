
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_jpegcompression {scalar_t__ quality; } ;
struct sd {scalar_t__ quality; int jpeg_hdr; } ;
struct gspca_dev {int usb_err; scalar_t__ streaming; } ;


 scalar_t__ QUALITY_MAX ;
 scalar_t__ QUALITY_MIN ;
 int jpeg_set_qual (int ,scalar_t__) ;

__attribute__((used)) static int sd_set_jcomp(struct gspca_dev *gspca_dev,
   struct v4l2_jpegcompression *jcomp)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (jcomp->quality < QUALITY_MIN)
  sd->quality = QUALITY_MIN;
 else if (jcomp->quality > QUALITY_MAX)
  sd->quality = QUALITY_MAX;
 else
  sd->quality = jcomp->quality;
 if (gspca_dev->streaming)
  jpeg_set_qual(sd->jpeg_hdr, sd->quality);
 return gspca_dev->usb_err;
}
