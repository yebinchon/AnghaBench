
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int debug ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline void tvp5150_write(struct v4l2_subdev *sd, unsigned char addr,
     unsigned char value)
{
 struct i2c_client *c = v4l2_get_subdevdata(sd);
 unsigned char buffer[2];
 int rc;

 buffer[0] = addr;
 buffer[1] = value;
 v4l2_dbg(2, debug, sd, "tvp5150: writing 0x%02x 0x%02x\n", buffer[0], buffer[1]);
 if (2 != (rc = i2c_master_send(c, buffer, 2)))
  v4l2_dbg(0, debug, sd, "i2c i/o error: rc == %d (should be 2)\n", rc);
}
