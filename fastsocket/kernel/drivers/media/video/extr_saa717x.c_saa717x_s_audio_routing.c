
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa717x_state {int audio_input; } ;


 int ERANGE ;
 int debug ;
 int set_audio_regs (struct v4l2_subdev*,struct saa717x_state*) ;
 struct saa717x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int saa717x_s_audio_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct saa717x_state *decoder = to_state(sd);

 if (input < 3) {
  decoder->audio_input = input;
  v4l2_dbg(1, debug, sd,
    "set decoder audio input to %d\n",
    decoder->audio_input);
  set_audio_regs(sd, decoder);
  return 0;
 }
 return -ERANGE;
}
