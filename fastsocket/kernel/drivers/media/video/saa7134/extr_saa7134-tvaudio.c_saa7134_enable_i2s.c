
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dev {TYPE_2__* input; TYPE_1__* pci; } ;
struct TYPE_4__ {int amux; } ;
struct TYPE_3__ {int device; } ;


 int PCI_DEVICE_ID_PHILIPS_SAA7130 ;



 int SAA7133_I2S_AUDIO_CONTROL ;
 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_I2S_AUDIO_OUTPUT ;
 int SAA7134_I2S_OUTPUT_FORMAT ;
 int SAA7134_I2S_OUTPUT_LEVEL ;
 int SAA7134_I2S_OUTPUT_SELECT ;
 int TV ;
 int card_is_empress (struct saa7134_dev*) ;
 int saa_andorl (int,int,int) ;
 int saa_writeb (int ,int) ;

void saa7134_enable_i2s(struct saa7134_dev *dev)
{
 int i2s_format;

 if (!card_is_empress(dev))
  return;

 if (dev->pci->device == PCI_DEVICE_ID_PHILIPS_SAA7130)
  return;


 saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x0E000000, 0x00000000);

 switch (dev->pci->device) {
 case 130:
 case 128:

     saa_writeb(SAA7133_I2S_AUDIO_CONTROL, 0x00);

     saa_writeb(SAA7134_I2S_AUDIO_OUTPUT, 0x11);
     break;

 case 129:
     i2s_format = (dev->input->amux == TV) ? 0x00 : 0x01;


     saa_writeb(SAA7134_I2S_OUTPUT_SELECT, 0x80);
     saa_writeb(SAA7134_I2S_OUTPUT_FORMAT, i2s_format);
     saa_writeb(SAA7134_I2S_OUTPUT_LEVEL, 0x0F);
     saa_writeb(SAA7134_I2S_AUDIO_OUTPUT, 0x01);

 default:
     break;
 }
}
