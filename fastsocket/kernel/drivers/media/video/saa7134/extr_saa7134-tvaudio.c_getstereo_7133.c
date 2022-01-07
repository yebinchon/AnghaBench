
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7134_dev {int dummy; } ;


 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int saa_readl (int) ;

__attribute__((used)) static int getstereo_7133(struct saa7134_dev *dev)
{
 int retval = V4L2_TUNER_SUB_MONO;
 u32 value;

 value = saa_readl(0x528 >> 2);
 if (value & 0x20)
  retval = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
 if (value & 0x40)
  retval = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
 return retval;
}
