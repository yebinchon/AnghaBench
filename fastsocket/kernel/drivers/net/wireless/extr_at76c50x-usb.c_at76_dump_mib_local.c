
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_phy {int dummy; } ;
struct mib_local {int preamble_type; int promiscuous_mode; int ssid_size; int txautorate_fallback; int beacon_enable; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int DBG_MIB ;
 int GFP_KERNEL ;
 int MIB_LOCAL ;
 int at76_dbg (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int at76_get_mib (int ,int ,struct mib_local*,int) ;
 int kfree (struct mib_local*) ;
 struct mib_local* kmalloc (int,int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_local(struct at76_priv *priv)
{
 int ret;
 struct mib_local *m = kmalloc(sizeof(struct mib_phy), GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_LOCAL, m, sizeof(struct mib_local));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (LOCAL) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB LOCAL: beacon_enable %d "
   "txautorate_fallback %d ssid_size %d promiscuous_mode %d "
   "preamble_type %d", wiphy_name(priv->hw->wiphy),
   m->beacon_enable,
   m->txautorate_fallback, m->ssid_size, m->promiscuous_mode,
   m->preamble_type);
exit:
 kfree(m);
}
