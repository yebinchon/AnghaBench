
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipw_priv {int status; TYPE_2__* ieee; } ;
struct TYPE_3__ {int wiphy; } ;
struct TYPE_4__ {TYPE_1__ wdev; } ;


 int STATUS_RF_KILL_HW ;
 int ipw_read32 (struct ipw_priv*,int) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static int rf_kill_active(struct ipw_priv *priv)
{
 if (0 == (ipw_read32(priv, 0x30) & 0x10000)) {
  priv->status |= STATUS_RF_KILL_HW;
  wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 1);
 } else {
  priv->status &= ~STATUS_RF_KILL_HW;
  wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 0);
 }

 return (priv->status & STATUS_RF_KILL_HW) ? 1 : 0;
}
