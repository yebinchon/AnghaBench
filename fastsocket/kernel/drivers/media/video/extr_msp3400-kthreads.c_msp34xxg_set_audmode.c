
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int std; int rxsubchans; scalar_t__ audmode; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ V4L2_TUNER_MODE_LANG1_LANG2 ;
 scalar_t__ V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_SUB_SAP ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp34xxg_set_sources (struct i2c_client*) ;
 int msp_write_dem (struct i2c_client*,int,int) ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static void msp34xxg_set_audmode(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (state->std == 0x20) {
        if ((state->rxsubchans & V4L2_TUNER_SUB_SAP) &&
     (state->audmode == V4L2_TUNER_MODE_LANG1_LANG2 ||
      state->audmode == V4L2_TUNER_MODE_LANG2)) {
   msp_write_dem(client, 0x20, 0x21);
        } else {
   msp_write_dem(client, 0x20, 0x20);
        }
 }

 msp34xxg_set_sources(client);
}
