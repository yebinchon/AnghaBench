
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; int pixelformat; } ;
struct TYPE_5__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_6__ {TYPE_4__* cam_mode; } ;
struct gspca_dev {TYPE_2__ cam; } ;
struct TYPE_8__ {int pixelformat; } ;


 int D_CONF ;
 int PDEBUG_MODE (char*,int ,int,int) ;
 int gspca_debug ;
 int gspca_get_mode (struct gspca_dev*,int,int ) ;
 int memcpy (TYPE_3__*,TYPE_4__*,int) ;
 int wxh_to_mode (struct gspca_dev*,int,int) ;

__attribute__((used)) static int try_fmt_vid_cap(struct gspca_dev *gspca_dev,
   struct v4l2_format *fmt)
{
 int w, h, mode, mode2;

 w = fmt->fmt.pix.width;
 h = fmt->fmt.pix.height;






 mode = wxh_to_mode(gspca_dev, w, h);


 if (gspca_dev->cam.cam_mode[mode].pixelformat
      != fmt->fmt.pix.pixelformat) {


  mode2 = gspca_get_mode(gspca_dev, mode,
     fmt->fmt.pix.pixelformat);
  if (mode2 >= 0)
   mode = mode2;


 }
 memcpy(&fmt->fmt.pix, &gspca_dev->cam.cam_mode[mode],
  sizeof fmt->fmt.pix);
 return mode;
}
