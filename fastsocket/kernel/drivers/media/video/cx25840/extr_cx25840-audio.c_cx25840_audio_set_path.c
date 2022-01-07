
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ aud_input; int audclk_freq; } ;


 scalar_t__ CX25840_AUDIO_SERIAL ;
 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int cx25840_write4 (struct i2c_client*,int,int) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ is_cx231xx (struct cx25840_state*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 int is_cx2583x (struct cx25840_state*) ;
 int set_audclk_freq (struct i2c_client*,int ) ;
 struct cx25840_state* to_state (int ) ;

void cx25840_audio_set_path(struct i2c_client *client)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));

 if (!is_cx2583x(state)) {

  cx25840_and_or(client, 0x810, ~0x1, 0x01);


  cx25840_and_or(client, 0x803, ~0x10, 0);


  cx25840_write(client, 0x8d3, 0x1f);

  if (state->aud_input == CX25840_AUDIO_SERIAL) {

   cx25840_write4(client, 0x8d0, 0x01011012);




  } else {

   cx25840_write4(client, 0x8d0, 0x1f063870);
  }
 }

 set_audclk_freq(client, state->audclk_freq);

 if (!is_cx2583x(state)) {
  if (state->aud_input != CX25840_AUDIO_SERIAL) {


   cx25840_and_or(client, 0x803, ~0x10, 0x10);
  }


  cx25840_and_or(client, 0x810, ~0x1, 0x00);


  if (is_cx2388x(state) || is_cx231xx(state))
   cx25840_and_or(client, 0x803, ~0x10, 0x10);
 }
}
