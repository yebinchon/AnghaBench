
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_phy {int current_reg_domain; int phy_type; int current_cca_mode; int channel_id; int * operation_rate_set; int cca_mode_supported; int mpdu_max_length; int plcp_header_length; int preamble_length; int sifs_time; int slot_time; int ed_threshold; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int DBG_MIB ;
 int GFP_KERNEL ;
 int MIB_PHY ;
 int at76_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int at76_get_mib (int ,int ,struct mib_phy*,int) ;
 int kfree (struct mib_phy*) ;
 struct mib_phy* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_phy(struct at76_priv *priv)
{
 int ret;
 struct mib_phy *m = kmalloc(sizeof(struct mib_phy), GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_PHY, m, sizeof(struct mib_phy));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (PHY) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB PHY: ed_threshold %d slot_time %d "
   "sifs_time %d preamble_length %d plcp_header_length %d "
   "mpdu_max_length %d cca_mode_supported %d operation_rate_set "
   "0x%x 0x%x 0x%x 0x%x channel_id %d current_cca_mode %d "
   "phy_type %d current_reg_domain %d",
   wiphy_name(priv->hw->wiphy), le32_to_cpu(m->ed_threshold),
   le16_to_cpu(m->slot_time), le16_to_cpu(m->sifs_time),
   le16_to_cpu(m->preamble_length),
   le16_to_cpu(m->plcp_header_length),
   le16_to_cpu(m->mpdu_max_length),
   le16_to_cpu(m->cca_mode_supported), m->operation_rate_set[0],
   m->operation_rate_set[1], m->operation_rate_set[2],
   m->operation_rate_set[3], m->channel_id, m->current_cca_mode,
   m->phy_type, m->current_reg_domain);
exit:
 kfree(m);
}
