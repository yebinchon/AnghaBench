
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int V4L2_TUNER_MODE_LANG1 ;
 int V4L2_TUNER_MODE_LANG2 ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_STEREO ;

int saa7134_tvaudio_rx2mode(u32 rx)
{
 u32 mode;

 mode = V4L2_TUNER_MODE_MONO;
 if (rx & V4L2_TUNER_SUB_STEREO)
  mode = V4L2_TUNER_MODE_STEREO;
 else if (rx & V4L2_TUNER_SUB_LANG1)
  mode = V4L2_TUNER_MODE_LANG1;
 else if (rx & V4L2_TUNER_SUB_LANG2)
  mode = V4L2_TUNER_MODE_LANG2;
 return mode;
}
