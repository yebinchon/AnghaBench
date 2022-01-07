
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_rphy {int dev; } ;
struct sas_expander_device {scalar_t__ level; } ;
struct ex_phy {scalar_t__ routing_attr; int attached_dev_type; int attached_sas_addr; int attached_tproto; int attached_iproto; int port; int attached_phy_id; } ;
struct TYPE_4__ {int children; struct ex_phy* ex_phy; } ;
struct domain_device {int dev_type; TYPE_2__ ex_dev; int siblings; struct asd_sas_port* port; int dev_list_node; int sas_addr; int hashed_sas_addr; int tproto; int iproto; struct domain_device* parent; int kref; struct sas_rphy* rphy; } ;
struct TYPE_3__ {int max_level; } ;
struct asd_sas_port {int dev_list_lock; int dev_list; TYPE_1__ disc; } ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ DIRECT_ROUTING ;


 int SAS_ADDR (int ) ;
 int SAS_ADDR_SIZE ;
 int SAS_DPRINTK (char*,int ,int,int ,int ) ;
 int SAS_EDGE_EXPANDER_DEVICE ;
 int SAS_FANOUT_EXPANDER_DEVICE ;
 int get_device (int *) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int max (int ,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 struct sas_expander_device* rphy_to_expander_device (struct sas_rphy*) ;
 struct domain_device* sas_alloc_device () ;
 int sas_discover_expander (struct domain_device*) ;
 int sas_ex_get_linkrate (struct domain_device*,struct domain_device*,struct ex_phy*) ;
 struct sas_rphy* sas_expander_alloc (int ,int ) ;
 int sas_fill_in_rphy (struct domain_device*,struct sas_rphy*) ;
 int sas_hash_addr (int ,int ) ;
 int sas_init_dev (struct domain_device*) ;
 scalar_t__ sas_port_add (int ) ;
 int sas_port_alloc (int *,int) ;
 int sas_put_device (struct domain_device*) ;
 int sas_rphy_add (struct sas_rphy*) ;
 int sas_rphy_delete (struct sas_rphy*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct domain_device *sas_ex_discover_expander(
 struct domain_device *parent, int phy_id)
{
 struct sas_expander_device *parent_ex = rphy_to_expander_device(parent->rphy);
 struct ex_phy *phy = &parent->ex_dev.ex_phy[phy_id];
 struct domain_device *child = ((void*)0);
 struct sas_rphy *rphy;
 struct sas_expander_device *edev;
 struct asd_sas_port *port;
 int res;

 if (phy->routing_attr == DIRECT_ROUTING) {
  SAS_DPRINTK("ex %016llx:0x%x:D <--> ex %016llx:0x%x is not "
       "allowed\n",
       SAS_ADDR(parent->sas_addr), phy_id,
       SAS_ADDR(phy->attached_sas_addr),
       phy->attached_phy_id);
  return ((void*)0);
 }
 child = sas_alloc_device();
 if (!child)
  return ((void*)0);

 phy->port = sas_port_alloc(&parent->rphy->dev, phy_id);

 BUG_ON(sas_port_add(phy->port) != 0);


 switch (phy->attached_dev_type) {
 case 129:
  rphy = sas_expander_alloc(phy->port,
       SAS_EDGE_EXPANDER_DEVICE);
  break;
 case 128:
  rphy = sas_expander_alloc(phy->port,
       SAS_FANOUT_EXPANDER_DEVICE);
  break;
 default:
  rphy = ((void*)0);
  BUG();
 }
 port = parent->port;
 child->rphy = rphy;
 get_device(&rphy->dev);
 edev = rphy_to_expander_device(rphy);
 child->dev_type = phy->attached_dev_type;
 kref_get(&parent->kref);
 child->parent = parent;
 child->port = port;
 child->iproto = phy->attached_iproto;
 child->tproto = phy->attached_tproto;
 memcpy(child->sas_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);
 sas_hash_addr(child->hashed_sas_addr, child->sas_addr);
 sas_ex_get_linkrate(parent, child, phy);
 edev->level = parent_ex->level + 1;
 parent->port->disc.max_level = max(parent->port->disc.max_level,
        edev->level);
 sas_init_dev(child);
 sas_fill_in_rphy(child, rphy);
 sas_rphy_add(rphy);

 spin_lock_irq(&parent->port->dev_list_lock);
 list_add_tail(&child->dev_list_node, &parent->port->dev_list);
 spin_unlock_irq(&parent->port->dev_list_lock);

 res = sas_discover_expander(child);
 if (res) {
  sas_rphy_delete(rphy);
  spin_lock_irq(&parent->port->dev_list_lock);
  list_del(&child->dev_list_node);
  spin_unlock_irq(&parent->port->dev_list_lock);
  sas_put_device(child);
  return ((void*)0);
 }
 list_add_tail(&child->siblings, &parent->ex_dev.children);
 return child;
}
