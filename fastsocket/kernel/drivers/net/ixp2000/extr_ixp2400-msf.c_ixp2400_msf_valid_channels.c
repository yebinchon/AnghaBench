
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int IXP2400_RX_MODE_MPHY ;
 int IXP2400_RX_MODE_MPHY_32 ;
 int IXP2400_RX_MODE_WIDTH_MASK ;

__attribute__((used)) static u32 ixp2400_msf_valid_channels(u32 reg)
{
 u32 channels;

 channels = 0;
 switch (reg & IXP2400_RX_MODE_WIDTH_MASK) {
 case 130:
  channels = 0x1;
  if (reg & IXP2400_RX_MODE_MPHY &&
      !(reg & IXP2400_RX_MODE_MPHY_32))
   channels = 0xf;
  break;

 case 129:
  channels = 0x5;
  break;

 case 128:
  channels = 0xf;
  break;

 case 131:
  channels = 0xd;
  break;
 }

 return channels;
}
