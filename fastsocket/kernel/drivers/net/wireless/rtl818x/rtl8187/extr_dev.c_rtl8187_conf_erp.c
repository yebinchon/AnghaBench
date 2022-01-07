
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl8187_priv {int slot_time; int* aifsn; TYPE_1__* map; scalar_t__ is_rtl8187b; } ;
struct TYPE_2__ {int SIFS; int SLOT; int DIFS; int CARRIER_SENSE_COUNTER; int EIFS; int BRSR; } ;


 int DIV_ROUND_UP (int,int) ;
 int SIFS_TIME ;
 scalar_t__* rtl8187b_ac_addr ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int*,int) ;

__attribute__((used)) static void rtl8187_conf_erp(struct rtl8187_priv *priv, bool use_short_slot,
        bool use_short_preamble)
{
 if (priv->is_rtl8187b) {
  u8 difs, eifs;
  u16 ack_timeout;
  int queue;

  if (use_short_slot) {
   priv->slot_time = 0x9;
   difs = 0x1c;
   eifs = 0x53;
  } else {
   priv->slot_time = 0x14;
   difs = 0x32;
   eifs = 0x5b;
  }
  rtl818x_iowrite8(priv, &priv->map->SIFS, 0x22);
  rtl818x_iowrite8(priv, &priv->map->SLOT, priv->slot_time);
  rtl818x_iowrite8(priv, &priv->map->DIFS, difs);





  rtl818x_iowrite8(priv, (u8 *)&priv->map->BRSR + 1, eifs);






  ack_timeout = 112 + 48 + difs;
  if (use_short_preamble)
   ack_timeout += 72;
  else
   ack_timeout += 144;
  rtl818x_iowrite8(priv, &priv->map->CARRIER_SENSE_COUNTER,
     DIV_ROUND_UP(ack_timeout, 4));

  for (queue = 0; queue < 4; queue++)
   rtl818x_iowrite8(priv, (u8 *) rtl8187b_ac_addr[queue],
      priv->aifsn[queue] * priv->slot_time +
      SIFS_TIME);
 } else {
  rtl818x_iowrite8(priv, &priv->map->SIFS, 0x22);
  if (use_short_slot) {
   rtl818x_iowrite8(priv, &priv->map->SLOT, 0x9);
   rtl818x_iowrite8(priv, &priv->map->DIFS, 0x14);
   rtl818x_iowrite8(priv, &priv->map->EIFS, 91 - 0x14);
  } else {
   rtl818x_iowrite8(priv, &priv->map->SLOT, 0x14);
   rtl818x_iowrite8(priv, &priv->map->DIFS, 0x24);
   rtl818x_iowrite8(priv, &priv->map->EIFS, 91 - 0x24);
  }
 }
}
