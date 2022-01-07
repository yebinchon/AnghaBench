
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nmodes; TYPE_1__* cam_mode; } ;
struct gspca_dev {TYPE_2__ cam; } ;
struct TYPE_3__ {int width; int height; } ;



__attribute__((used)) static int wxh_to_mode(struct gspca_dev *gspca_dev,
   int width, int height)
{
 int i;

 for (i = gspca_dev->cam.nmodes; --i > 0; ) {
  if (width >= gspca_dev->cam.cam_mode[i].width
      && height >= gspca_dev->cam.cam_mode[i].height)
   break;
 }
 return i;
}
