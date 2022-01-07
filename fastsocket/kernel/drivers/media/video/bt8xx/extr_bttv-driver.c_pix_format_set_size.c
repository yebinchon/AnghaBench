
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {unsigned int width; unsigned int height; unsigned int bytesperline; unsigned int sizeimage; } ;
struct bttv_format {int flags; unsigned int depth; } ;


 int FORMAT_FLAGS_PLANAR ;

__attribute__((used)) static void
pix_format_set_size (struct v4l2_pix_format * f,
    const struct bttv_format * fmt,
    unsigned int width,
    unsigned int height)
{
 f->width = width;
 f->height = height;

 if (fmt->flags & FORMAT_FLAGS_PLANAR) {
  f->bytesperline = width;
  f->sizeimage = (width * height * fmt->depth) >> 3;
 } else {
  f->bytesperline = (width * fmt->depth) >> 3;
  f->sizeimage = height * f->bytesperline;
 }
}
