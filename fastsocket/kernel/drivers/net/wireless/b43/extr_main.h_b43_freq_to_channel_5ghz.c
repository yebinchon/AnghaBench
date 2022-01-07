
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 b43_freq_to_channel_5ghz(int freq)
{
 return ((freq - 5000) / 5);
}
