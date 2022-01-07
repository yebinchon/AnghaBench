
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G0_TC_Error_Confirm_Bit ;
 int G1_TC_Error_Confirm_Bit ;

__attribute__((used)) static inline unsigned Gi_TC_Error_Confirm_Bit(unsigned counter_index)
{
 if (counter_index % 2)
  return G1_TC_Error_Confirm_Bit;
 return G0_TC_Error_Confirm_Bit;
}
