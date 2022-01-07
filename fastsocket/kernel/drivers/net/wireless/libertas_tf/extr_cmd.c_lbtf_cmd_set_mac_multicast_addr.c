
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lbtf_private {int nr_of_multicastmacaddr; int multicastlist; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_mac_multicast_addr {TYPE_1__ hdr; int maclist; void* nr_of_adrs; void* action; } ;
typedef int cmd ;


 int CMD_ACT_SET ;
 int CMD_MAC_MULTICAST_ADR ;
 int ETH_ALEN ;
 int LBTF_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_cmd (char*,void*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int memcpy (int ,int ,int) ;

int lbtf_cmd_set_mac_multicast_addr(struct lbtf_private *priv)
{
 struct cmd_ds_mac_multicast_addr cmd;

 lbtf_deb_enter(LBTF_DEB_CMD);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);

 cmd.nr_of_adrs = cpu_to_le16((u16) priv->nr_of_multicastmacaddr);

 lbtf_deb_cmd("MULTICAST_ADR: setting %d addresses\n", cmd.nr_of_adrs);

 memcpy(cmd.maclist, priv->multicastlist,
        priv->nr_of_multicastmacaddr * ETH_ALEN);

 lbtf_cmd_async(priv, CMD_MAC_MULTICAST_ADR, &cmd.hdr, sizeof(cmd));

 lbtf_deb_leave(LBTF_DEB_CMD);
 return 0;
}
