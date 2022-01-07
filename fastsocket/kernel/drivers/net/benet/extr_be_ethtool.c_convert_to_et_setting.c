
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BE_SUPPORTED_SPEED_100MBPS ;
 int BE_SUPPORTED_SPEED_10GBPS ;
 int BE_SUPPORTED_SPEED_10MBPS ;
 int BE_SUPPORTED_SPEED_1GBPS ;
 int SUPPORTED_10000baseKR_Full ;
 int SUPPORTED_10000baseKX4_Full ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseKX_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_Backplane ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;

__attribute__((used)) static u32 convert_to_et_setting(u32 if_type, u32 if_speeds)
{
 u32 val = 0;

 switch (if_type) {
 case 135:
 case 134:
 case 129:
  val |= SUPPORTED_TP;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_100MBPS)
   val |= SUPPORTED_100baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_10MBPS)
   val |= SUPPORTED_10baseT_Full;
  break;
 case 132:
  val |= SUPPORTED_Backplane;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseKX_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseKX4_Full;
  break;
 case 133:
  val |= SUPPORTED_Backplane |
    SUPPORTED_10000baseKR_Full;
  break;
 case 130:
 case 128:
 case 131:
  val |= SUPPORTED_FIBRE;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseT_Full;
  break;
 case 136:
  val |= SUPPORTED_TP;
  if (if_speeds & BE_SUPPORTED_SPEED_10GBPS)
   val |= SUPPORTED_10000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_1GBPS)
   val |= SUPPORTED_1000baseT_Full;
  if (if_speeds & BE_SUPPORTED_SPEED_100MBPS)
   val |= SUPPORTED_100baseT_Full;
  break;
 default:
  val |= SUPPORTED_TP;
 }

 return val;
}
