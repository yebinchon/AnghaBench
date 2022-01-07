
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DP_PRE_EMPHASIS_0 ;
 int DP_PRE_EMPHASIS_3_5 ;
 int DP_PRE_EMPHASIS_6 ;
 int DP_PRE_EMPHASIS_9_5 ;




 int DP_TRAIN_PRE_EMPHASIS_MASK ;




 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 int DP_VOLTAGE_0_4 ;
 int DP_VOLTAGE_0_6 ;
 int DP_VOLTAGE_0_8 ;
 int DP_VOLTAGE_1_2 ;

__attribute__((used)) static uint32_t
intel_gen4_signal_levels(uint8_t train_set)
{
 uint32_t signal_levels = 0;

 switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
 case 130:
 default:
  signal_levels |= DP_VOLTAGE_0_4;
  break;
 case 129:
  signal_levels |= DP_VOLTAGE_0_6;
  break;
 case 128:
  signal_levels |= DP_VOLTAGE_0_8;
  break;
 case 131:
  signal_levels |= DP_VOLTAGE_1_2;
  break;
 }
 switch (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) {
 case 135:
 default:
  signal_levels |= DP_PRE_EMPHASIS_0;
  break;
 case 134:
  signal_levels |= DP_PRE_EMPHASIS_3_5;
  break;
 case 133:
  signal_levels |= DP_PRE_EMPHASIS_6;
  break;
 case 132:
  signal_levels |= DP_PRE_EMPHASIS_9_5;
  break;
 }
 return signal_levels;
}
