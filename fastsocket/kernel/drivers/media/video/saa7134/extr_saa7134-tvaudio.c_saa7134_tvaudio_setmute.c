
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;






 int mute_input_7133 (struct saa7134_dev*) ;
 int mute_input_7134 (struct saa7134_dev*) ;

void saa7134_tvaudio_setmute(struct saa7134_dev *dev)
{
 switch (dev->pci->device) {
 case 131:
 case 129:
  mute_input_7134(dev);
  break;
 case 130:
 case 128:
  mute_input_7133(dev);
  break;
 }
}
