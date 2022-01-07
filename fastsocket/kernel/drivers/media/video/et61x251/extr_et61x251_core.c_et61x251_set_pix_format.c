
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct et61x251_device {int dummy; } ;


 int EIO ;
 scalar_t__ V4L2_PIX_FMT_ET61X251 ;
 int et61x251_read_reg (struct et61x251_device*,int) ;
 scalar_t__ et61x251_write_reg (struct et61x251_device*,int,int) ;

__attribute__((used)) static int
et61x251_set_pix_format(struct et61x251_device* cam,
   struct v4l2_pix_format* pix)
{
 int r, err = 0;

 if ((r = et61x251_read_reg(cam, 0x12)) < 0)
  err += r;
 if (pix->pixelformat == V4L2_PIX_FMT_ET61X251)
  err += et61x251_write_reg(cam, r & 0xfd, 0x12);
 else
  err += et61x251_write_reg(cam, r | 0x02, 0x12);

 return err ? -EIO : 0;
}
