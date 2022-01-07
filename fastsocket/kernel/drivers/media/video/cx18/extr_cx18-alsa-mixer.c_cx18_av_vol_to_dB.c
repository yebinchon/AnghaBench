
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int cx18_av_vol_to_dB(int v)
{
 if (v < (23 << 9))
  v = (23 << 9);
 else if (v > (127 << 9))
  v = (127 << 9);
 return (v >> 9) - 119;
}
