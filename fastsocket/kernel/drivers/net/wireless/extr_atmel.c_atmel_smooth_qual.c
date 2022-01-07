
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qual; int level; int updated; } ;
struct TYPE_4__ {TYPE_1__ qual; } ;
struct atmel_private {unsigned long last_qual; int beacons_this_sec; int beacon_period; TYPE_2__ wstats; } ;


 unsigned long HZ ;
 int IW_QUAL_QUAL_INVALID ;
 int IW_QUAL_QUAL_UPDATED ;
 unsigned long jiffies ;

__attribute__((used)) static void atmel_smooth_qual(struct atmel_private *priv)
{
 unsigned long time_diff = (jiffies - priv->last_qual) / HZ;
 while (time_diff--) {
  priv->last_qual += HZ;
  priv->wstats.qual.qual = priv->wstats.qual.qual / 2;
  priv->wstats.qual.qual +=
   priv->beacons_this_sec * priv->beacon_period * (priv->wstats.qual.level + 100) / 4000;
  priv->beacons_this_sec = 0;
 }
 priv->wstats.qual.updated |= IW_QUAL_QUAL_UPDATED;
 priv->wstats.qual.updated &= ~IW_QUAL_QUAL_INVALID;
}
