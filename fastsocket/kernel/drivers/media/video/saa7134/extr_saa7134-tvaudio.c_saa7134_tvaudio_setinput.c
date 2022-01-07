
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_input {int dummy; } ;
struct saa7134_dev {TYPE_1__* pci; struct saa7134_input* input; } ;
struct TYPE_2__ {int device; } ;






 int mute_input_7133 (struct saa7134_dev*) ;
 int mute_input_7134 (struct saa7134_dev*) ;
 int saa7134_enable_i2s (struct saa7134_dev*) ;

void saa7134_tvaudio_setinput(struct saa7134_dev *dev,
         struct saa7134_input *in)
{
 dev->input = in;
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
 saa7134_enable_i2s(dev);
}
