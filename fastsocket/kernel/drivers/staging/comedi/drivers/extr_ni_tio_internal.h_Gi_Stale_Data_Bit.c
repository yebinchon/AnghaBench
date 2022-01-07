
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum Gxx_Status_Bits { ____Placeholder_Gxx_Status_Bits } Gxx_Status_Bits ;


 int G0_Stale_Data_Bit ;
 int G1_Stale_Data_Bit ;

__attribute__((used)) static inline enum Gxx_Status_Bits Gi_Stale_Data_Bit(unsigned counter_index)
{
 if (counter_index % 2)
  return G1_Stale_Data_Bit;
 return G0_Stale_Data_Bit;
}
