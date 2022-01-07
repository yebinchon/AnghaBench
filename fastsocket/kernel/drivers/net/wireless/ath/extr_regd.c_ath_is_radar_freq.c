
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static bool ath_is_radar_freq(u16 center_freq)
{
 return (center_freq >= 5260 && center_freq <= 5700);
}
