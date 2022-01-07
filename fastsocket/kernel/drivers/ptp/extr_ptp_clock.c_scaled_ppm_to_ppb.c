
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;
typedef int s32 ;



__attribute__((used)) static s32 scaled_ppm_to_ppb(long ppm)
{
 s64 ppb = 1 + ppm;
 ppb *= 125;
 ppb >>= 13;
 return (s32) ppb;
}
