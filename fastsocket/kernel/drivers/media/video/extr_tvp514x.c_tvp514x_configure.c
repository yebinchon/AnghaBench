
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {int tvp514x_regs; } ;


 scalar_t__ debug ;
 int tvp514x_reg_dump (struct v4l2_subdev*) ;
 int tvp514x_write_regs (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int tvp514x_configure(struct v4l2_subdev *sd,
  struct tvp514x_decoder *decoder)
{
 int err;


 err =
     tvp514x_write_regs(sd, decoder->tvp514x_regs);
 if (err)
  return err;

 if (debug)
  tvp514x_reg_dump(sd);

 return 0;
}
