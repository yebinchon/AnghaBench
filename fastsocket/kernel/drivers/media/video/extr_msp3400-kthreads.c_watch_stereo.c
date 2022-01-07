
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {scalar_t__ watch_stereo; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ msp_detect_stereo (struct i2c_client*) ;
 scalar_t__ msp_once ;
 int msp_set_audmode (struct i2c_client*) ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static void watch_stereo(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (msp_detect_stereo(client))
  msp_set_audmode(client);

 if (msp_once)
  state->watch_stereo = 0;
}
