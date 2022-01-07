
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {int tvaudio; TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;





 int V4L2_TUNER_SUB_MONO ;
 int getstereo_7133 (struct saa7134_dev*) ;
 int tvaudio_getstereo (struct saa7134_dev*,int ) ;

int saa7134_tvaudio_getstereo(struct saa7134_dev *dev)
{
 int retval = V4L2_TUNER_SUB_MONO;

 switch (dev->pci->device) {
 case 129:
  if (dev->tvaudio)
   retval = tvaudio_getstereo(dev,dev->tvaudio);
  break;
 case 130:
 case 128:
  retval = getstereo_7133(dev);
  break;
 }
 return retval;
}
