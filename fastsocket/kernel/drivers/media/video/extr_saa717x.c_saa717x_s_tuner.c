
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct saa717x_state {int tuner_audio_mode; } ;


 int TUNER_AUDIO_LANG1 ;
 int TUNER_AUDIO_LANG2 ;
 int TUNER_AUDIO_MONO ;
 int TUNER_AUDIO_STEREO ;




 int debug ;
 int set_audio_mode (struct v4l2_subdev*,int) ;
 struct saa717x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*) ;

__attribute__((used)) static int saa717x_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct saa717x_state *decoder = to_state(sd);
 int audio_mode;
 char *mes[4] = {
  "MONO", "STEREO", "LANG1", "LANG2/SAP"
 };

 audio_mode = TUNER_AUDIO_STEREO;

 switch (vt->audmode) {
  case 129:
   audio_mode = TUNER_AUDIO_MONO;
   break;
  case 128:
   audio_mode = TUNER_AUDIO_STEREO;
   break;
  case 130:
   audio_mode = TUNER_AUDIO_LANG2;
   break;
  case 131:
   audio_mode = TUNER_AUDIO_LANG1;
   break;
 }

 v4l2_dbg(1, debug, sd, "change audio mode to %s\n",
   mes[audio_mode]);
 decoder->tuner_audio_mode = audio_mode;


 set_audio_mode(sd, decoder->tuner_audio_mode);
 return 0;
}
