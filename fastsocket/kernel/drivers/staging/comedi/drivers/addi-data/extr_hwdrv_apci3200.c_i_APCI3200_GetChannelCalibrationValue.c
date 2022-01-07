
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {size_t minor; } ;
struct TYPE_4__ {int i_ConnectionType; size_t i_ADDIDATAGain; TYPE_1__* s_Module; } ;
struct TYPE_3__ {unsigned int ul_CurrentSourceCJC; unsigned int* ul_CurrentSource; unsigned int* ul_GainFactor; } ;


 int printk (char*,unsigned int) ;
 TYPE_2__* s_BoardInfos ;

int i_APCI3200_GetChannelCalibrationValue(struct comedi_device *dev,
 unsigned int ui_Channel_num, unsigned int *CJCCurrentSource,
 unsigned int *ChannelCurrentSource, unsigned int *ChannelGainFactor)
{
 int i_DiffChannel = 0;
 int i_Module = 0;






 if (s_BoardInfos[dev->minor].i_ConnectionType == 1) {


  if ((ui_Channel_num >= 0) && (ui_Channel_num <= 1))
   i_DiffChannel = ui_Channel_num, i_Module = 0;
  else if ((ui_Channel_num >= 2) && (ui_Channel_num <= 3))
   i_DiffChannel = ui_Channel_num - 2, i_Module = 1;
  else if ((ui_Channel_num >= 4) && (ui_Channel_num <= 5))
   i_DiffChannel = ui_Channel_num - 4, i_Module = 2;
  else if ((ui_Channel_num >= 6) && (ui_Channel_num <= 7))
   i_DiffChannel = ui_Channel_num - 6, i_Module = 3;

 } else {

  if ((ui_Channel_num == 0) || (ui_Channel_num == 1))
   i_DiffChannel = 0, i_Module = 0;
  else if ((ui_Channel_num == 2) || (ui_Channel_num == 3))
   i_DiffChannel = 1, i_Module = 0;
  else if ((ui_Channel_num == 4) || (ui_Channel_num == 5))
   i_DiffChannel = 0, i_Module = 1;
  else if ((ui_Channel_num == 6) || (ui_Channel_num == 7))
   i_DiffChannel = 1, i_Module = 1;
  else if ((ui_Channel_num == 8) || (ui_Channel_num == 9))
   i_DiffChannel = 0, i_Module = 2;
  else if ((ui_Channel_num == 10) || (ui_Channel_num == 11))
   i_DiffChannel = 1, i_Module = 2;
  else if ((ui_Channel_num == 12) || (ui_Channel_num == 13))
   i_DiffChannel = 0, i_Module = 3;
  else if ((ui_Channel_num == 14) || (ui_Channel_num == 15))
   i_DiffChannel = 1, i_Module = 3;
 }


 *CJCCurrentSource =
  s_BoardInfos[dev->minor].s_Module[i_Module].ul_CurrentSourceCJC;




 *ChannelCurrentSource =
  s_BoardInfos[dev->minor].s_Module[i_Module].
  ul_CurrentSource[i_DiffChannel];







 *ChannelGainFactor =
  s_BoardInfos[dev->minor].s_Module[i_Module].
  ul_GainFactor[s_BoardInfos[dev->minor].i_ADDIDATAGain];





 return 0;
}
