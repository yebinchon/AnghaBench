
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 int WARN_ON (int) ;
 int WLCORE_CHAN_HT20 ;
 int WLCORE_CHAN_HT40MINUS ;
 int WLCORE_CHAN_HT40PLUS ;
 int WLCORE_CHAN_NO_HT ;

__attribute__((used)) static u8 wlcore_get_native_channel_type(u8 nl_channel_type)
{
 switch (nl_channel_type) {
 case 128:
  return WLCORE_CHAN_NO_HT;
 case 131:
  return WLCORE_CHAN_HT20;
 case 130:
  return WLCORE_CHAN_HT40MINUS;
 case 129:
  return WLCORE_CHAN_HT40PLUS;
 default:
  WARN_ON(1);
  return WLCORE_CHAN_NO_HT;
 }
}
