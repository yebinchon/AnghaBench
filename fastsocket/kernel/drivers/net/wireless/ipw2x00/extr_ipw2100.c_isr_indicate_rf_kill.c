
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ipw2100_priv {int rf_kill; scalar_t__ stop_rf_kill; int status; TYPE_3__* ieee; TYPE_1__* net_dev; } ;
struct TYPE_5__ {int wiphy; } ;
struct TYPE_6__ {TYPE_2__ wdev; } ;
struct TYPE_4__ {int name; } ;


 int HZ ;
 int IPW_DEBUG_INFO (char*,int ) ;
 int STATUS_RF_KILL_HW ;
 int cancel_delayed_work (int *) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void isr_indicate_rf_kill(struct ipw2100_priv *priv, u32 status)
{
 IPW_DEBUG_INFO("%s: RF Kill state changed to radio OFF.\n",
         priv->net_dev->name);


 wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 1);
 priv->status |= STATUS_RF_KILL_HW;


 priv->stop_rf_kill = 0;
 cancel_delayed_work(&priv->rf_kill);
 schedule_delayed_work(&priv->rf_kill, round_jiffies_relative(HZ));
}
