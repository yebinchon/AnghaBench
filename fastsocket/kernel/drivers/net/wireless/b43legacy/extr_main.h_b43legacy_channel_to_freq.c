
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43legacy_wldev {int dummy; } ;


 int b43legacy_channel_to_freq_bg (int ) ;

__attribute__((used)) static inline
int b43legacy_channel_to_freq(struct b43legacy_wldev *dev,
         u8 channel)
{
 return b43legacy_channel_to_freq_bg(channel);
}
