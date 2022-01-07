
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at76_priv {int radio_on; TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int CMD_RADIO_OFF ;
 int CMD_RADIO_ON ;
 int at76_set_card_command (int ,int,int *,int ) ;
 int wiphy_err (int ,char*,int,int) ;

__attribute__((used)) static int at76_set_radio(struct at76_priv *priv, int enable)
{
 int ret;
 int cmd;

 if (priv->radio_on == enable)
  return 0;

 cmd = enable ? CMD_RADIO_ON : CMD_RADIO_OFF;

 ret = at76_set_card_command(priv->udev, cmd, ((void*)0), 0);
 if (ret < 0)
  wiphy_err(priv->hw->wiphy,
     "at76_set_card_command(%d) failed: %d\n", cmd, ret);
 else
  ret = 1;

 priv->radio_on = enable;
 return ret;
}
