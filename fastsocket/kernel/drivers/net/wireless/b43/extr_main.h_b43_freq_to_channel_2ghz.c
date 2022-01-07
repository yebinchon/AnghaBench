
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 b43_freq_to_channel_2ghz(int freq)
{
 u8 channel;

 if (freq == 2484)
  channel = 14;
 else
  channel = (freq - 2407) / 5;

 return channel;
}
