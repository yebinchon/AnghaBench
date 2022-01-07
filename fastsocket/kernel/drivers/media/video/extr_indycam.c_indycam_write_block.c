
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int indycam_write_reg (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int indycam_write_block(struct v4l2_subdev *sd, u8 reg,
          u8 length, u8 *data)
{
 int i, err;

 for (i = 0; i < length; i++) {
  err = indycam_write_reg(sd, reg + i, data[i]);
  if (err)
   return err;
 }

 return 0;
}
