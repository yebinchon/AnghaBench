
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_tvaudio {int mode; } ;
struct saa7134_dev {int dummy; } ;
typedef int __u32 ;


 int SAA7134_AUDIO_STATUS ;
 int SAA7134_IDENT_SIF ;
 int SAA7134_NICAM_STATUS ;






 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int dprintk (char*,...) ;
 int saa_readb (int ) ;

__attribute__((used)) static int tvaudio_getstereo(struct saa7134_dev *dev, struct saa7134_tvaudio *audio)
{
 __u32 idp, nicam, nicam_status;
 int retval = -1;

 switch (audio->mode) {
 case 131:
  return V4L2_TUNER_SUB_MONO;
 case 132:
 case 133:
  idp = (saa_readb(SAA7134_IDENT_SIF) & 0xe0) >> 5;
  dprintk("getstereo: fm/stereo: idp=0x%x\n",idp);
  if (0x03 == (idp & 0x03))
   retval = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
  else if (0x05 == (idp & 0x05))
   retval = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
  else if (0x01 == (idp & 0x01))
   retval = V4L2_TUNER_SUB_MONO;
  break;
 case 130:

  break;
 case 128:
 case 129:
  nicam = saa_readb(SAA7134_AUDIO_STATUS);
  dprintk("getstereo: nicam=0x%x\n",nicam);
  if (nicam & 0x1) {
   nicam_status = saa_readb(SAA7134_NICAM_STATUS);
   dprintk("getstereo: nicam_status=0x%x\n", nicam_status);

   switch (nicam_status & 0x03) {
       case 0x01:
    retval = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
    break;
       case 0x02:
    retval = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
    break;
       default:
    retval = V4L2_TUNER_SUB_MONO;
   }
  } else {

  }
  break;
 }
 if (retval != -1)
  dprintk("found audio subchannels:%s%s%s%s\n",
   (retval & V4L2_TUNER_SUB_MONO) ? " mono" : "",
   (retval & V4L2_TUNER_SUB_STEREO) ? " stereo" : "",
   (retval & V4L2_TUNER_SUB_LANG1) ? " lang1" : "",
   (retval & V4L2_TUNER_SUB_LANG2) ? " lang2" : "");
 return retval;
}
