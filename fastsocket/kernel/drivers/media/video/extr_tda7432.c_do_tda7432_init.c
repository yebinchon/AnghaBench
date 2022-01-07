
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tda7432 {int input; int volume; int muted; scalar_t__ loud; void* rr; void* rf; void* lr; void* lf; int bass; int treble; } ;


 void* TDA7432_ATTEN_0DB ;
 int TDA7432_BASS_0DB ;
 int TDA7432_BASS_NORM ;
 int TDA7432_BASS_SYM ;
 int TDA7432_LD_ON ;
 int TDA7432_STEREO_IN ;
 int TDA7432_TREBLE_0DB ;
 int debug ;
 scalar_t__ loudness ;
 int tda7432_set (struct v4l2_subdev*) ;
 struct tda7432* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static void do_tda7432_init(struct v4l2_subdev *sd)
{
 struct tda7432 *t = to_state(sd);

 v4l2_dbg(2, debug, sd, "In tda7432_init\n");

 t->input = TDA7432_STEREO_IN |
      TDA7432_BASS_SYM |
      TDA7432_BASS_NORM;
 t->volume = 0x3b ;
 if (loudness)
  t->volume |= TDA7432_LD_ON;
 t->muted = 1;
 t->treble = TDA7432_TREBLE_0DB;
 t->bass = TDA7432_BASS_0DB;
 t->lf = TDA7432_ATTEN_0DB;
 t->lr = TDA7432_ATTEN_0DB;
 t->rf = TDA7432_ATTEN_0DB;
 t->rr = TDA7432_ATTEN_0DB;
 t->loud = loudness;

 tda7432_set(sd);
}
