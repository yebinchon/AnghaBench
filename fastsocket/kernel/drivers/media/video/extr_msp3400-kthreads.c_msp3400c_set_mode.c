
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int route_in; int mode; scalar_t__ has_nicam; int rxsubchans; } ;
struct msp3400c_init_data_dem {int ad_cv; int* fir1; int* fir2; int mode_reg; int dsp_matrix; int dsp_src; int cdo2; int cdo1; } ;
struct i2c_client {int dummy; } ;


 int V4L2_TUNER_SUB_MONO ;
 int i2c_get_clientdata (struct i2c_client*) ;
 struct msp3400c_init_data_dem* msp3400c_init_data ;
 int msp3400c_set_carrier (struct i2c_client*,int ,int ) ;
 int msp_debug ;
 int msp_set_source (struct i2c_client*,int ) ;
 int msp_write_dem (struct i2c_client*,int,int) ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 struct msp_state* to_state (int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int) ;

void msp3400c_set_mode(struct i2c_client *client, int mode)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 struct msp3400c_init_data_dem *data = &msp3400c_init_data[mode];
 int tuner = (state->route_in >> 3) & 1;
 int i;

 v4l_dbg(1, msp_debug, client, "set_mode: %d\n", mode);
 state->mode = mode;
 state->rxsubchans = V4L2_TUNER_SUB_MONO;

 msp_write_dem(client, 0x00bb, data->ad_cv | (tuner ? 0x100 : 0));

 for (i = 5; i >= 0; i--)
  msp_write_dem(client, 0x0001, data->fir1[i]);

 msp_write_dem(client, 0x0005, 0x0004);
 msp_write_dem(client, 0x0005, 0x0040);
 msp_write_dem(client, 0x0005, 0x0000);
 for (i = 5; i >= 0; i--)
  msp_write_dem(client, 0x0005, data->fir2[i]);

 msp_write_dem(client, 0x0083, data->mode_reg);

 msp3400c_set_carrier(client, data->cdo1, data->cdo2);

 msp_set_source(client, data->dsp_src);



 msp_write_dsp(client, 0x000d, 0x1900);
 msp_write_dsp(client, 0x000e, data->dsp_matrix);
 if (state->has_nicam)
  msp_write_dsp(client, 0x0010, 0x5a00);
}
