
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int b43_channel_to_freq_5ghz(u8 channel)
{
 return (5000 + (5 * channel));
}
