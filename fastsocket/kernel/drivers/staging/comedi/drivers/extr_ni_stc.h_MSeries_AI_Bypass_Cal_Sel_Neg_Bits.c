
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSeries_AI_Bypass_Cal_Sel_Pos_Mask ;

__attribute__((used)) static inline unsigned MSeries_AI_Bypass_Cal_Sel_Neg_Bits(int
         calibration_source)
{
 return (calibration_source << 10) & MSeries_AI_Bypass_Cal_Sel_Pos_Mask;
}
