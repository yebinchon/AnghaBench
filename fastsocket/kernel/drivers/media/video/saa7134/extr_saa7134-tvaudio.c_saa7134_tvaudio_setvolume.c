
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;



 int SAA7134_CHANNEL1_LEVEL ;
 int SAA7134_CHANNEL2_LEVEL ;
 int SAA7134_NICAM_LEVEL_ADJUST ;
 int saa_writeb (int ,int) ;

void saa7134_tvaudio_setvolume(struct saa7134_dev *dev, int level)
{
 switch (dev->pci->device) {
 case 128:
  saa_writeb(SAA7134_CHANNEL1_LEVEL, level & 0x1f);
  saa_writeb(SAA7134_CHANNEL2_LEVEL, level & 0x1f);
  saa_writeb(SAA7134_NICAM_LEVEL_ADJUST, level & 0x1f);
  break;
 }
}
