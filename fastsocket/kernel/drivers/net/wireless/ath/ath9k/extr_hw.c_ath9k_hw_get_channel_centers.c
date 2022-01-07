
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chan_centers {scalar_t__ synth_center; scalar_t__ ext_center; scalar_t__ ctl_center; } ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {scalar_t__ chanmode; scalar_t__ channel; } ;
typedef int int8_t ;


 scalar_t__ CHANNEL_A_HT40PLUS ;
 scalar_t__ CHANNEL_G_HT40PLUS ;
 int HT40_CHANNEL_CENTER_SHIFT ;
 int IS_CHAN_HT40 (struct ath9k_channel*) ;

void ath9k_hw_get_channel_centers(struct ath_hw *ah,
      struct ath9k_channel *chan,
      struct chan_centers *centers)
{
 int8_t extoff;

 if (!IS_CHAN_HT40(chan)) {
  centers->ctl_center = centers->ext_center =
   centers->synth_center = chan->channel;
  return;
 }

 if ((chan->chanmode == CHANNEL_A_HT40PLUS) ||
     (chan->chanmode == CHANNEL_G_HT40PLUS)) {
  centers->synth_center =
   chan->channel + HT40_CHANNEL_CENTER_SHIFT;
  extoff = 1;
 } else {
  centers->synth_center =
   chan->channel - HT40_CHANNEL_CENTER_SHIFT;
  extoff = -1;
 }

 centers->ctl_center =
  centers->synth_center - (extoff * HT40_CHANNEL_CENTER_SHIFT);

 centers->ext_center =
  centers->synth_center + (extoff * HT40_CHANNEL_CENTER_SHIFT);
}
