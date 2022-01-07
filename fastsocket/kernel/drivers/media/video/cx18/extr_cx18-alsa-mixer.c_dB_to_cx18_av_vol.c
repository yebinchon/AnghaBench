
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int dB_to_cx18_av_vol(int dB)
{
 if (dB < -96)
  dB = -96;
 else if (dB > 8)
  dB = 8;
 return (dB + 119) << 9;
}
