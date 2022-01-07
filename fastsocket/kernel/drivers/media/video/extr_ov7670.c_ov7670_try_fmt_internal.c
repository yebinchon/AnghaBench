
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; scalar_t__ width; scalar_t__ height; int colorspace; int field; } ;
struct ov7670_win_size {scalar_t__ width; scalar_t__ height; } ;
struct ov7670_format_struct {scalar_t__ mbus_code; int colorspace; } ;


 int N_OV7670_FMTS ;
 int N_WIN_SIZES ;
 int V4L2_FIELD_NONE ;
 struct ov7670_format_struct* ov7670_formats ;
 struct ov7670_win_size* ov7670_win_sizes ;

__attribute__((used)) static int ov7670_try_fmt_internal(struct v4l2_subdev *sd,
  struct v4l2_mbus_framefmt *fmt,
  struct ov7670_format_struct **ret_fmt,
  struct ov7670_win_size **ret_wsize)
{
 int index;
 struct ov7670_win_size *wsize;

 for (index = 0; index < N_OV7670_FMTS; index++)
  if (ov7670_formats[index].mbus_code == fmt->code)
   break;
 if (index >= N_OV7670_FMTS) {

  index = 0;
  fmt->code = ov7670_formats[0].mbus_code;
 }
 if (ret_fmt != ((void*)0))
  *ret_fmt = ov7670_formats + index;



 fmt->field = V4L2_FIELD_NONE;




 for (wsize = ov7670_win_sizes; wsize < ov7670_win_sizes + N_WIN_SIZES;
      wsize++)
  if (fmt->width >= wsize->width && fmt->height >= wsize->height)
   break;
 if (wsize >= ov7670_win_sizes + N_WIN_SIZES)
  wsize--;
 if (ret_wsize != ((void*)0))
  *ret_wsize = wsize;



 fmt->width = wsize->width;
 fmt->height = wsize->height;
 fmt->colorspace = ov7670_formats[index].colorspace;
 return 0;
}
