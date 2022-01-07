
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct discover_resp {int linkrate; int iproto; int tproto; scalar_t__ attached_sata_dev; int pmax_linkrate; int pmin_linkrate; int hmax_linkrate; int hmin_linkrate; int attached_dev_type; int virtual; int routing_attr; int change_count; int attached_phy_id; int * attached_sas_addr; int attached_sata_ps; int attached_sata_host; } ;
struct smp_resp {int result; struct discover_resp disc; } ;
struct sas_rphy {int dev; } ;
struct sas_ha_struct {int state; } ;
struct expander_device {struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; int attached_dev_type; int linkrate; int phy_id; int attached_iproto; int attached_tproto; int last_da_index; int * attached_sas_addr; TYPE_4__* phy; int virtual; int routing_attr; int phy_change_count; int attached_phy_id; int attached_sata_ps; scalar_t__ attached_sata_dev; int attached_sata_host; } ;
struct domain_device {int * sas_addr; TYPE_2__* port; struct sas_rphy* rphy; struct expander_device ex_dev; } ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;
typedef enum sas_dev_type { ____Placeholder_sas_dev_type } sas_dev_type ;
struct TYPE_9__ {int initiator_port_protocols; int target_port_protocols; int phy_identifier; int device_type; scalar_t__ sas_address; } ;
struct TYPE_10__ {scalar_t__ negotiated_linkrate; int maximum_linkrate; int minimum_linkrate; int maximum_linkrate_hw; int minimum_linkrate_hw; TYPE_3__ identify; } ;
struct TYPE_7__ {int pending; } ;
struct TYPE_8__ {TYPE_1__ disc; struct sas_ha_struct* ha; } ;


 int BUG_ON (int) ;
 int DISCE_REVALIDATE_DOMAIN ;



 scalar_t__ PHY_EMPTY ;
 scalar_t__ PHY_NOT_PRESENT ;
 scalar_t__ PHY_VACANT ;
 scalar_t__ SAS_ADDR (int *) ;
 int SAS_ADDR_SIZE ;
 int SAS_DPRINTK (char*,char*,scalar_t__,int,int ,int,scalar_t__,char*) ;

 int SAS_HA_ATA_EH_ACTIVE ;
 scalar_t__ SAS_LINK_RATE_1_5_GBPS ;
 int SAS_PROTOCOL_SATA ;



 scalar_t__ WARN_ON_ONCE (scalar_t__) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ sas_phy_add (TYPE_4__*) ;
 TYPE_4__* sas_phy_alloc (int *,int) ;
 int sas_phy_free (TYPE_4__*) ;
 int sas_route_char (struct domain_device*,struct ex_phy*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int to_dev_type (struct discover_resp*) ;

__attribute__((used)) static void sas_set_ex_phy(struct domain_device *dev, int phy_id, void *rsp)
{
 enum sas_dev_type dev_type;
 enum sas_linkrate linkrate;
 u8 sas_addr[SAS_ADDR_SIZE];
 struct smp_resp *resp = rsp;
 struct discover_resp *dr = &resp->disc;
 struct sas_ha_struct *ha = dev->port->ha;
 struct expander_device *ex = &dev->ex_dev;
 struct ex_phy *phy = &ex->ex_phy[phy_id];
 struct sas_rphy *rphy = dev->rphy;
 bool new_phy = !phy->phy;
 char *type;

 if (new_phy) {
  if (WARN_ON_ONCE(test_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state)))
   return;
  phy->phy = sas_phy_alloc(&rphy->dev, phy_id);


  BUG_ON(!phy->phy);
 }

 switch (resp->result) {
 case 128:
  phy->phy_state = PHY_VACANT;
  break;
 default:
  phy->phy_state = PHY_NOT_PRESENT;
  break;
 case 129:
  phy->phy_state = PHY_EMPTY;
  break;
 }


 dev_type = phy->attached_dev_type;
 linkrate = phy->linkrate;
 memcpy(sas_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);


 if (phy->phy_state == PHY_VACANT) {
  memset(phy->attached_sas_addr, 0, SAS_ADDR_SIZE);
  phy->attached_dev_type = 132;
  if (!test_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state)) {
   phy->phy_id = phy_id;
   goto skip;
  } else
   goto out;
 }

 phy->attached_dev_type = to_dev_type(dr);
 if (test_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state))
  goto out;
 phy->phy_id = phy_id;
 phy->linkrate = dr->linkrate;
 phy->attached_sata_host = dr->attached_sata_host;
 phy->attached_sata_dev = dr->attached_sata_dev;
 phy->attached_sata_ps = dr->attached_sata_ps;
 phy->attached_iproto = dr->iproto << 1;
 phy->attached_tproto = dr->tproto << 1;



 if (phy->attached_dev_type == 132 ||
     phy->linkrate < SAS_LINK_RATE_1_5_GBPS)
  memset(phy->attached_sas_addr, 0, SAS_ADDR_SIZE);
 else
  memcpy(phy->attached_sas_addr, dr->attached_sas_addr, SAS_ADDR_SIZE);
 phy->attached_phy_id = dr->attached_phy_id;
 phy->phy_change_count = dr->change_count;
 phy->routing_attr = dr->routing_attr;
 phy->virtual = dr->virtual;
 phy->last_da_index = -1;

 phy->phy->identify.sas_address = SAS_ADDR(phy->attached_sas_addr);
 phy->phy->identify.device_type = dr->attached_dev_type;
 phy->phy->identify.initiator_port_protocols = phy->attached_iproto;
 phy->phy->identify.target_port_protocols = phy->attached_tproto;
 if (!phy->attached_tproto && dr->attached_sata_dev)
  phy->phy->identify.target_port_protocols = SAS_PROTOCOL_SATA;
 phy->phy->identify.phy_identifier = phy_id;
 phy->phy->minimum_linkrate_hw = dr->hmin_linkrate;
 phy->phy->maximum_linkrate_hw = dr->hmax_linkrate;
 phy->phy->minimum_linkrate = dr->pmin_linkrate;
 phy->phy->maximum_linkrate = dr->pmax_linkrate;
 phy->phy->negotiated_linkrate = phy->linkrate;

 skip:
 if (new_phy)
  if (sas_phy_add(phy->phy)) {
   sas_phy_free(phy->phy);
   return;
  }

 out:
 switch (phy->attached_dev_type) {
 case 130:
  type = "stp pending";
  break;
 case 132:
  type = "no device";
  break;
 case 131:
  if (phy->attached_iproto) {
   if (phy->attached_tproto)
    type = "host+target";
   else
    type = "host";
  } else {
   if (dr->attached_sata_dev)
    type = "stp";
   else
    type = "ssp";
  }
  break;
 case 134:
 case 133:
  type = "smp";
  break;
 default:
  type = "unknown";
 }




 if (new_phy || phy->attached_dev_type != dev_type ||
     phy->linkrate != linkrate ||
     SAS_ADDR(phy->attached_sas_addr) != SAS_ADDR(sas_addr))
            ;
 else
  return;





 if (test_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state))
  set_bit(DISCE_REVALIDATE_DOMAIN, &dev->port->disc.pending);

 SAS_DPRINTK("%sex %016llx phy%02d:%c:%X attached: %016llx (%s)\n",
      test_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state) ? "ata: " : "",
      SAS_ADDR(dev->sas_addr), phy->phy_id,
      sas_route_char(dev, phy), phy->linkrate,
      SAS_ADDR(phy->attached_sas_addr), type);
}
