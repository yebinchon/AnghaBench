
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int debug ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,unsigned char) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_warn (struct v4l2_subdev*,char*,int,unsigned char) ;

__attribute__((used)) static int tda9875_write(struct v4l2_subdev *sd, int subaddr, unsigned char val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 unsigned char buffer[2];

 v4l2_dbg(1, debug, sd, "Writing %d 0x%x\n", subaddr, val);
 buffer[0] = subaddr;
 buffer[1] = val;
 if (2 != i2c_master_send(client, buffer, 2)) {
  v4l2_warn(sd, "I/O error, trying (write %d 0x%x)\n",
         subaddr, val);
  return -1;
 }
 return 0;
}
