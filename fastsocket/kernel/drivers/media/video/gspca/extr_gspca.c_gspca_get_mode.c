
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nmodes; TYPE_1__* cam_mode; } ;
struct gspca_dev {TYPE_2__ cam; } ;
struct TYPE_3__ {int pixelformat; } ;


 int EINVAL ;

__attribute__((used)) static int gspca_get_mode(struct gspca_dev *gspca_dev,
   int mode,
   int pixfmt)
{
 int modeU, modeD;

 modeU = modeD = mode;
 while ((modeU < gspca_dev->cam.nmodes) || modeD >= 0) {
  if (--modeD >= 0) {
   if (gspca_dev->cam.cam_mode[modeD].pixelformat
        == pixfmt)
    return modeD;
  }
  if (++modeU < gspca_dev->cam.nmodes) {
   if (gspca_dev->cam.cam_mode[modeU].pixelformat
        == pixfmt)
    return modeU;
  }
 }
 return -EINVAL;
}
