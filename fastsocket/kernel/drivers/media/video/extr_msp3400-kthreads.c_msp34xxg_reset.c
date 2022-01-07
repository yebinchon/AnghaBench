
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int route_in; int std; int i2s_mode; scalar_t__ has_nicam; scalar_t__ has_i2s_conf; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int msp34xxg_modus (struct i2c_client*) ;
 int msp34xxg_set_sources (struct i2c_client*) ;
 int msp_reset (struct i2c_client*) ;
 int msp_stereo_thresh ;
 int msp_write_dem (struct i2c_client*,int,int) ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static void msp34xxg_reset(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 int tuner = (state->route_in >> 3) & 1;
 int modus;



 state->std = 1;

 msp_reset(client);

 if (state->has_i2s_conf)
  msp_write_dem(client, 0x40, state->i2s_mode);


 modus = msp34xxg_modus(client);
 modus |= tuner ? 0x100 : 0;
 msp_write_dem(client, 0x30, modus);



 msp34xxg_set_sources(client);

 msp_write_dsp(client, 0x0d, 0x1900);
 msp_write_dsp(client, 0x0e, 0x3000);
 if (state->has_nicam)
  msp_write_dsp(client, 0x10, 0x5a00);
 msp_write_dem(client, 0x22, msp_stereo_thresh);
}
