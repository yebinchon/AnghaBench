
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {scalar_t__ chip_id; } ;


 scalar_t__ CHIP_ID_EM2874 ;




 unsigned int EM28XX_CHIPCFG2_TS_PACKETSIZE_MASK ;
 int EM28XX_R01_CHIPCFG2 ;
 int em28xx_coredbg (char*,unsigned int) ;
 unsigned int em28xx_read_reg (struct em28xx*,int ) ;

int em28xx_isoc_dvb_max_packetsize(struct em28xx *dev)
{
 unsigned int chip_cfg2;
 unsigned int packet_size = 564;

 if (dev->chip_id == CHIP_ID_EM2874) {


  packet_size = 564;
 } else {

  chip_cfg2 = em28xx_read_reg(dev, EM28XX_R01_CHIPCFG2);
  switch (chip_cfg2 & EM28XX_CHIPCFG2_TS_PACKETSIZE_MASK) {
  case 131:
   packet_size = 188;
   break;
  case 130:
   packet_size = 376;
   break;
  case 129:
   packet_size = 564;
   break;
  case 128:
   packet_size = 752;
   break;
  }
 }

 em28xx_coredbg("dvb max packet size=%d\n", packet_size);
 return packet_size;
}
