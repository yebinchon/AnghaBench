
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct sas_identify {int dummy; } ;
struct TYPE_5__ {scalar_t__ sas_address; } ;
struct _sas_phy {TYPE_2__ remote_identify; TYPE_1__* phy; int attached_handle; } ;
struct _sas_node {struct _sas_phy* phy; } ;
struct MPT2SAS_ADAPTER {int logging_level; int sas_node_lock; scalar_t__ pci_error_recovery; scalar_t__ shost_recovery; } ;
struct TYPE_4__ {int dev; int negotiated_linkrate; } ;


 int KERN_INFO ;
 size_t MPI2_SAS_NEG_LINK_RATE_1_5 ;
 int MPT_DEBUG_TRANSPORT ;
 int _transport_add_phy_to_an_existing_port (struct MPT2SAS_ADAPTER*,struct _sas_node*,struct _sas_phy*,scalar_t__) ;
 int _transport_convert_phy_link_rate (size_t) ;
 struct _sas_node* _transport_sas_node_find_by_sas_address (struct MPT2SAS_ADAPTER*,scalar_t__) ;
 int _transport_set_identify (struct MPT2SAS_ADAPTER*,int ,TYPE_2__*) ;
 int dev_printk (int ,int *,char*,unsigned long long,size_t,size_t,int ,unsigned long long) ;
 int memset (TYPE_2__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt2sas_transport_update_links(struct MPT2SAS_ADAPTER *ioc,
     u64 sas_address, u16 handle, u8 phy_number, u8 link_rate)
{
 unsigned long flags;
 struct _sas_node *sas_node;
 struct _sas_phy *mpt2sas_phy;

 if (ioc->shost_recovery || ioc->pci_error_recovery)
  return;

 spin_lock_irqsave(&ioc->sas_node_lock, flags);
 sas_node = _transport_sas_node_find_by_sas_address(ioc, sas_address);
 if (!sas_node) {
  spin_unlock_irqrestore(&ioc->sas_node_lock, flags);
  return;
 }

 mpt2sas_phy = &sas_node->phy[phy_number];
 mpt2sas_phy->attached_handle = handle;
 spin_unlock_irqrestore(&ioc->sas_node_lock, flags);
 if (handle && (link_rate >= MPI2_SAS_NEG_LINK_RATE_1_5)) {
  _transport_set_identify(ioc, handle,
      &mpt2sas_phy->remote_identify);
  _transport_add_phy_to_an_existing_port(ioc, sas_node,
      mpt2sas_phy, mpt2sas_phy->remote_identify.sas_address);
 } else
  memset(&mpt2sas_phy->remote_identify, 0 , sizeof(struct
      sas_identify));

 if (mpt2sas_phy->phy)
  mpt2sas_phy->phy->negotiated_linkrate =
      _transport_convert_phy_link_rate(link_rate);

 if ((ioc->logging_level & MPT_DEBUG_TRANSPORT))
  dev_printk(KERN_INFO, &mpt2sas_phy->phy->dev,
      "refresh: parent sas_addr(0x%016llx),\n"
      "\tlink_rate(0x%02x), phy(%d)\n"
      "\tattached_handle(0x%04x), sas_addr(0x%016llx)\n",
      (unsigned long long)sas_address,
      link_rate, phy_number, handle, (unsigned long long)
      mpt2sas_phy->remote_identify.sas_address);
}
