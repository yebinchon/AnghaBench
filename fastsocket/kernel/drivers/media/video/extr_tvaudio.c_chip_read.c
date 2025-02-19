
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int debug ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned char) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_warn (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int chip_read(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 struct i2c_client *c = v4l2_get_subdevdata(sd);
 unsigned char buffer;

 if (1 != i2c_master_recv(c, &buffer, 1)) {
  v4l2_warn(sd, "I/O error (read)\n");
  return -1;
 }
 v4l2_dbg(1, debug, sd, "chip_read: 0x%x\n", buffer);
 return buffer;
}
