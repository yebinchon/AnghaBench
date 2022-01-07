
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stfle (unsigned long long*,int) ;

__attribute__((used)) static int ap_configuration_available(void)
{
 unsigned long long facility_bits[2];

 if (stfle(facility_bits, 2) <= 1)
  return 0;
 if (!(facility_bits[0] & (1ULL << 61)) ||
     !(facility_bits[0] & (1ULL << 51)))
  return 0;
 return 1;
}
