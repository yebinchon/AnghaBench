
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath9k_channel {int chanmode; int channel; } ;
 int EINVAL ;

__attribute__((used)) static int ar9550_hw_get_modes_txgain_index(struct ath_hw *ah,
         struct ath9k_channel *chan)
{
 int ret;

 switch (chan->chanmode) {
 case 136:
 case 135:
  if (chan->channel <= 5350)
   ret = 1;
  else if ((chan->channel > 5350) && (chan->channel <= 5600))
   ret = 3;
  else
   ret = 5;
  break;

 case 133:
 case 134:
  if (chan->channel <= 5350)
   ret = 2;
  else if ((chan->channel > 5350) && (chan->channel <= 5600))
   ret = 4;
  else
   ret = 6;
  break;

 case 131:
 case 130:
 case 132:
  ret = 8;
  break;

 case 128:
 case 129:
  ret = 7;
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
