
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int debug ;
 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int msleep (int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned char,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_read(struct v4l2_subdev *sd, unsigned char addr)
{
 struct i2c_client *c = v4l2_get_subdevdata(sd);
 unsigned char buffer[1];
 int rc;

 buffer[0] = addr;
 if (1 != (rc = i2c_master_send(c, buffer, 1)))
  v4l2_dbg(0, debug, sd, "i2c i/o error: rc == %d (should be 1)\n", rc);

 msleep(10);

 if (1 != (rc = i2c_master_recv(c, buffer, 1)))
  v4l2_dbg(0, debug, sd, "i2c i/o error: rc == %d (should be 1)\n", rc);

 v4l2_dbg(2, debug, sd, "tvp5150: read 0x%02x = 0x%02x\n", addr, buffer[0]);

 return (buffer[0]);
}
