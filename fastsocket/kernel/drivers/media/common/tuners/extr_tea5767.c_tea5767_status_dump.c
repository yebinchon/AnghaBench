
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xtal_freq; } ;
struct tea5767_priv {TYPE_1__ ctrl; } ;


 unsigned char TEA5767_ADC_LEVEL_MASK ;
 unsigned char TEA5767_BAND_LIMIT_MASK ;
 unsigned char TEA5767_CHIP_ID_MASK ;


 unsigned char TEA5767_IF_CNTR_MASK ;


 unsigned char TEA5767_READY_FLAG_MASK ;
 unsigned char TEA5767_RESERVED_MASK ;
 unsigned char TEA5767_STEREO_MASK ;
 int tuner_info (char*,...) ;

__attribute__((used)) static void tea5767_status_dump(struct tea5767_priv *priv,
    unsigned char *buffer)
{
 unsigned int div, frq;

 if (TEA5767_READY_FLAG_MASK & buffer[0])
  tuner_info("Ready Flag ON\n");
 else
  tuner_info("Ready Flag OFF\n");

 if (TEA5767_BAND_LIMIT_MASK & buffer[0])
  tuner_info("Tuner at band limit\n");
 else
  tuner_info("Tuner not at band limit\n");

 div = ((buffer[0] & 0x3f) << 8) | buffer[1];

 switch (priv->ctrl.xtal_freq) {
 case 131:
  frq = (div * 50000 - 700000 - 225000) / 4;
  break;
 case 129:
  frq = (div * 50000 + 700000 + 225000) / 4;
  break;
 case 128:
  frq = (div * 32768 + 700000 + 225000) / 4;
  break;
 case 130:
 default:
  frq = (div * 32768 - 700000 - 225000) / 4;
  break;
 }
 buffer[0] = (div >> 8) & 0x3f;
 buffer[1] = div & 0xff;

 tuner_info("Frequency %d.%03d KHz (divider = 0x%04x)\n",
     frq / 1000, frq % 1000, div);

 if (TEA5767_STEREO_MASK & buffer[2])
  tuner_info("Stereo\n");
 else
  tuner_info("Mono\n");

 tuner_info("IF Counter = %d\n", buffer[2] & TEA5767_IF_CNTR_MASK);

 tuner_info("ADC Level = %d\n",
     (buffer[3] & TEA5767_ADC_LEVEL_MASK) >> 4);

 tuner_info("Chip ID = %d\n", (buffer[3] & TEA5767_CHIP_ID_MASK));

 tuner_info("Reserved = 0x%02x\n",
     (buffer[4] & TEA5767_RESERVED_MASK));
}
