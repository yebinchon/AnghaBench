
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum Gxx_Joint_Status2_Bits { ____Placeholder_Gxx_Joint_Status2_Bits } Gxx_Joint_Status2_Bits ;


 int G0_Permanent_Stale_Bit ;
 int G1_Permanent_Stale_Bit ;

__attribute__((used)) static inline enum Gxx_Joint_Status2_Bits Gi_Permanent_Stale_Bit(unsigned
         counter_index)
{
 if (counter_index % 2)
  return G1_Permanent_Stale_Bit;
 return G0_Permanent_Stale_Bit;
}
