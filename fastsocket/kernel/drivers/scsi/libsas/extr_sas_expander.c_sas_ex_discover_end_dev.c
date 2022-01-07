
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_rphy {int dev; } ;
struct expander_device {int children; struct ex_phy* ex_phy; } ;
struct ex_phy {int attached_tproto; int * port; scalar_t__ attached_sata_dev; int attached_sas_addr; int attached_iproto; scalar_t__ attached_sata_ps; scalar_t__ attached_sata_host; } ;
struct domain_device {int tproto; TYPE_1__* port; int dev_list_node; int disco_list_node; struct sas_rphy* rphy; int siblings; int sas_addr; int dev_type; int hashed_sas_addr; int iproto; struct domain_device* parent; int kref; struct expander_device ex_dev; } ;
struct TYPE_2__ {int dev_list_lock; int disco_list; } ;


 int SAS_ADDR (int ) ;
 int SAS_ADDR_SIZE ;
 int SAS_DPRINTK (char*,int,int ,int,...) ;
 int SAS_END_DEV ;
 int SAS_PROTOCOL_SSP ;
 int SAS_PROTOCOL_STP ;
 int get_device (int *) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int ,int ,int ) ;
 struct domain_device* sas_alloc_device () ;
 int sas_ata_init (struct domain_device*) ;
 int sas_device_set_phy (struct domain_device*,int *) ;
 int sas_discover_end_dev (struct domain_device*) ;
 int sas_discover_sata (struct domain_device*) ;
 struct sas_rphy* sas_end_device_alloc (int *) ;
 int sas_ex_get_linkrate (struct domain_device*,struct domain_device*,struct ex_phy*) ;
 int sas_fill_in_rphy (struct domain_device*,struct sas_rphy*) ;
 int sas_get_ata_info (struct domain_device*,struct ex_phy*) ;
 int sas_hash_addr (int ,int ) ;
 int sas_init_dev (struct domain_device*) ;
 scalar_t__ sas_port_add (int *) ;
 int * sas_port_alloc (int *,int) ;
 int sas_port_delete (int *) ;
 int sas_port_free (int *) ;
 int sas_put_device (struct domain_device*) ;
 int sas_rphy_free (struct sas_rphy*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct domain_device *sas_ex_discover_end_dev(
 struct domain_device *parent, int phy_id)
{
 struct expander_device *parent_ex = &parent->ex_dev;
 struct ex_phy *phy = &parent_ex->ex_phy[phy_id];
 struct domain_device *child = ((void*)0);
 struct sas_rphy *rphy;
 int res;

 if (phy->attached_sata_host || phy->attached_sata_ps)
  return ((void*)0);

 child = sas_alloc_device();
 if (!child)
  return ((void*)0);

 kref_get(&parent->kref);
 child->parent = parent;
 child->port = parent->port;
 child->iproto = phy->attached_iproto;
 memcpy(child->sas_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);
 sas_hash_addr(child->hashed_sas_addr, child->sas_addr);
 if (!phy->port) {
  phy->port = sas_port_alloc(&parent->rphy->dev, phy_id);
  if (unlikely(!phy->port))
   goto out_err;
  if (unlikely(sas_port_add(phy->port) != 0)) {
   sas_port_free(phy->port);
   goto out_err;
  }
 }
 sas_ex_get_linkrate(parent, child, phy);
 sas_device_set_phy(child, phy->port);
   if (phy->attached_tproto & SAS_PROTOCOL_SSP) {
  child->dev_type = SAS_END_DEV;
  rphy = sas_end_device_alloc(phy->port);

  if (unlikely(!rphy))
   goto out_free;
  child->tproto = phy->attached_tproto;
  sas_init_dev(child);

  child->rphy = rphy;
  get_device(&rphy->dev);
  sas_fill_in_rphy(child, rphy);

  list_add_tail(&child->disco_list_node, &parent->port->disco_list);

  res = sas_discover_end_dev(child);
  if (res) {
   SAS_DPRINTK("sas_discover_end_dev() for device %16llx "
        "at %016llx:0x%x returned 0x%x\n",
        SAS_ADDR(child->sas_addr),
        SAS_ADDR(parent->sas_addr), phy_id, res);
   goto out_list_del;
  }
 } else {
  SAS_DPRINTK("target proto 0x%x at %016llx:0x%x not handled\n",
       phy->attached_tproto, SAS_ADDR(parent->sas_addr),
       phy_id);
  goto out_free;
 }

 list_add_tail(&child->siblings, &parent_ex->children);
 return child;

 out_list_del:
 sas_rphy_free(child->rphy);
 list_del(&child->disco_list_node);
 spin_lock_irq(&parent->port->dev_list_lock);
 list_del(&child->dev_list_node);
 spin_unlock_irq(&parent->port->dev_list_lock);
 out_free:
 sas_port_delete(phy->port);
 out_err:
 phy->port = ((void*)0);
 sas_put_device(child);
 return ((void*)0);
}
