
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_tuner {int capability; scalar_t__ audmode; int rxsubchans; } ;
struct cx88_core {int astat; int tvaudio; int use_nicam; } ;


 int AUD_CTL ;
 int AUD_STATUS ;
 int UNSET ;
 int V4L2_TUNER_CAP_LANG1 ;
 int V4L2_TUNER_CAP_LANG2 ;
 int V4L2_TUNER_CAP_SAP ;
 int V4L2_TUNER_CAP_STEREO ;
 scalar_t__ V4L2_TUNER_MODE_LANG2 ;
 void* V4L2_TUNER_MODE_MONO ;
 scalar_t__ V4L2_TUNER_MODE_SAP ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int * aud_ctl_names ;
 int cx88_dsp_detect_stereo_sap (struct cx88_core*) ;
 int cx_read (int ) ;
 int dprintk (char*,int,char*,char*,int ) ;

void cx88_get_stereo(struct cx88_core *core, struct v4l2_tuner *t)
{
 static char *m[] = { "stereo", "dual mono", "mono", "sap" };
 static char *p[] = { "no pilot", "pilot c1", "pilot c2", "?" };
 u32 reg, mode, pilot;

 reg = cx_read(AUD_STATUS);
 mode = reg & 0x03;
 pilot = (reg >> 2) & 0x03;

 if (core->astat != reg)
  dprintk("AUD_STATUS: 0x%x [%s/%s] ctl=%s\n",
   reg, m[mode], p[pilot],
   aud_ctl_names[cx_read(AUD_CTL) & 63]);
 core->astat = reg;

 t->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_SAP |
     V4L2_TUNER_CAP_LANG1 | V4L2_TUNER_CAP_LANG2;
 t->rxsubchans = UNSET;
 t->audmode = V4L2_TUNER_MODE_MONO;

 switch (mode) {
 case 0:
  t->audmode = V4L2_TUNER_MODE_STEREO;
  break;
 case 1:
  t->audmode = V4L2_TUNER_MODE_LANG2;
  break;
 case 2:
  t->audmode = V4L2_TUNER_MODE_MONO;
  break;
 case 3:
  t->audmode = V4L2_TUNER_MODE_SAP;
  break;
 }

 switch (core->tvaudio) {
 case 137:
 case 138:
 case 136:
 case 129:
 case 135:
  if (!core->use_nicam) {
   t->rxsubchans = cx88_dsp_detect_stereo_sap(core);
   break;
  }
  break;
 case 128:
 case 133:
 case 130:
 case 131:
 case 134:
 case 132:

  break;
 }


 if (UNSET == t->rxsubchans) {
  t->rxsubchans = V4L2_TUNER_SUB_MONO;


  if (V4L2_TUNER_MODE_STEREO == t->audmode)
   t->rxsubchans |= V4L2_TUNER_SUB_STEREO;
 }
 return;
}
