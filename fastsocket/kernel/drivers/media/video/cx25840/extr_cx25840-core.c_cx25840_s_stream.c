
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;


 int cx25840_debug ;
 int cx25840_read (struct i2c_client*,int) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 scalar_t__ is_cx231xx (struct cx25840_state*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,char*) ;

__attribute__((used)) static int cx25840_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 v;

 v4l_dbg(1, cx25840_debug, client, "%s video output\n",
   enable ? "enable" : "disable");
 if (enable) {
  if (is_cx2388x(state) || is_cx231xx(state)) {
   v = cx25840_read(client, 0x421) | 0x0b;
   cx25840_write(client, 0x421, v);
  } else {
   v = cx25840_read(client, 0x115) | 0x0c;
   cx25840_write(client, 0x115, v);
   v = cx25840_read(client, 0x116) | 0x04;
   cx25840_write(client, 0x116, v);
  }
 } else {
  if (is_cx2388x(state) || is_cx231xx(state)) {
   v = cx25840_read(client, 0x421) & ~(0x0b);
   cx25840_write(client, 0x421, v);
  } else {
   v = cx25840_read(client, 0x115) & ~(0x0c);
   cx25840_write(client, 0x115, v);
   v = cx25840_read(client, 0x116) & ~(0x04);
   cx25840_write(client, 0x116, v);
  }
 }
 return 0;
}
