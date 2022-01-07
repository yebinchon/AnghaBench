
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int std; int pvr150_workaround; scalar_t__ radio; } ;


 int V4L2_STD_525_60 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_STD_NTSC_M_KR ;
 int V4L2_STD_PAL ;
 int V4L2_STD_SECAM ;
 int V4L2_STD_SECAM_DK ;
 int V4L2_STD_SECAM_L ;
 int V4L2_STD_SECAM_LC ;
 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ is_cx2583x (struct cx25840_state*) ;
 struct cx25840_state* to_state (int ) ;

__attribute__((used)) static void input_change(struct i2c_client *client)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));
 v4l2_std_id std = state->std;


 if (std & V4L2_STD_SECAM) {
  cx25840_write(client, 0x402, 0);
 }
 else {
  cx25840_write(client, 0x402, 0x04);
  cx25840_write(client, 0x49f, (std & V4L2_STD_NTSC) ? 0x14 : 0x11);
 }
 cx25840_and_or(client, 0x401, ~0x60, 0);
 cx25840_and_or(client, 0x401, ~0x60, 0x60);


 if (is_cx2583x(state))
  return;

 cx25840_and_or(client, 0x810, ~0x01, 1);

 if (state->radio) {
  cx25840_write(client, 0x808, 0xf9);
  cx25840_write(client, 0x80b, 0x00);
 }
 else if (std & V4L2_STD_525_60) {





  int hw_fix = state->pvr150_workaround;

  if (std == V4L2_STD_NTSC_M_JP) {

   cx25840_write(client, 0x808, hw_fix ? 0x2f : 0xf7);
  } else if (std == V4L2_STD_NTSC_M_KR) {

   cx25840_write(client, 0x808, hw_fix ? 0x3f : 0xf8);
  } else {

   cx25840_write(client, 0x808, hw_fix ? 0x1f : 0xf6);
  }
  cx25840_write(client, 0x80b, 0x00);
 } else if (std & V4L2_STD_PAL) {

  cx25840_write(client, 0x808, 0xff);




        cx25840_write(client, 0x80b, 0x00);
 } else if (std & V4L2_STD_SECAM) {

  cx25840_write(client, 0x808, 0xff);


  if ((std & V4L2_STD_SECAM_DK) &&
      !(std & (V4L2_STD_SECAM_L | V4L2_STD_SECAM_LC))) {

   cx25840_write(client, 0x80b, 0x00);
        } else if (!(std & V4L2_STD_SECAM_DK) &&
     (std & (V4L2_STD_SECAM_L | V4L2_STD_SECAM_LC))) {

   cx25840_write(client, 0x80b, 0x08);
        } else {

   cx25840_write(client, 0x80b, 0x10);
        }
 }

 cx25840_and_or(client, 0x810, ~0x01, 0);
}
