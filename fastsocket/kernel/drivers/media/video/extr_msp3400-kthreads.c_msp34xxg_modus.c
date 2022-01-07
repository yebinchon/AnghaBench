
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int v4l2_std; scalar_t__ radio; } ;
struct i2c_client {int dummy; } ;


 int V4L2_STD_MN ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_STD_NTSC_M_KR ;
 int V4L2_STD_SECAM_L ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp_debug ;
 struct msp_state* to_state (int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*) ;

__attribute__((used)) static int msp34xxg_modus(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (state->radio) {
  v4l_dbg(1, msp_debug, client, "selected radio modus\n");
  return 0x0001;
 }
 if (state->v4l2_std == V4L2_STD_NTSC_M_JP) {
  v4l_dbg(1, msp_debug, client, "selected M (EIA-J) modus\n");
  return 0x4001;
 }
 if (state->v4l2_std == V4L2_STD_NTSC_M_KR) {
  v4l_dbg(1, msp_debug, client, "selected M (A2) modus\n");
  return 0x0001;
 }
 if (state->v4l2_std == V4L2_STD_SECAM_L) {
  v4l_dbg(1, msp_debug, client, "selected SECAM-L modus\n");
  return 0x6001;
 }
 if (state->v4l2_std & V4L2_STD_MN) {
  v4l_dbg(1, msp_debug, client, "selected M (BTSC) modus\n");
  return 0x2001;
 }
 return 0x7001;
}
