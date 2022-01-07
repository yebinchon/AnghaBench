
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;
struct lbtf_private {scalar_t__ regioncode; TYPE_2__* channels; TYPE_1__ range; } ;
struct channel_range {scalar_t__ regdomain; } ;
struct TYPE_4__ {scalar_t__ flags; } ;


 int ARRAY_SIZE (struct channel_range*) ;
 size_t CHAN_TO_IDX (scalar_t__) ;
 struct channel_range* channel_ranges ;

__attribute__((used)) static void lbtf_geo_init(struct lbtf_private *priv)
{
 const struct channel_range *range = channel_ranges;
 u8 ch;
 int i;

 for (i = 0; i < ARRAY_SIZE(channel_ranges); i++)
  if (channel_ranges[i].regdomain == priv->regioncode) {
   range = &channel_ranges[i];
   break;
  }

 for (ch = priv->range.start; ch < priv->range.end; ch++)
  priv->channels[CHAN_TO_IDX(ch)].flags = 0;
}
