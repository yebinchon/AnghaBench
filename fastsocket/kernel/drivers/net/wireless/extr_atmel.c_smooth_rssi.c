
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int level; int updated; } ;
struct TYPE_4__ {TYPE_1__ qual; } ;
struct atmel_private {int firmware_type; TYPE_2__ wstats; } ;



 int IW_QUAL_LEVEL_INVALID ;
 int IW_QUAL_LEVEL_UPDATED ;

__attribute__((used)) static void smooth_rssi(struct atmel_private *priv, u8 rssi)
{
 u8 old = priv->wstats.qual.level;
 u8 max_rssi = 42;

 switch (priv->firmware_type) {
 case 128:
  max_rssi = 63;
  break;
 default:
  break;
 }

 rssi = rssi * 100 / max_rssi;
 if ((rssi + old) % 2)
  priv->wstats.qual.level = (rssi + old) / 2 + 1;
 else
  priv->wstats.qual.level = (rssi + old) / 2;
 priv->wstats.qual.updated |= IW_QUAL_LEVEL_UPDATED;
 priv->wstats.qual.updated &= ~IW_QUAL_LEVEL_INVALID;
}
