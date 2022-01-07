
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expander_device {scalar_t__ parent_port; struct ex_phy* ex_phy; } ;
struct ex_phy {int phy; } ;
struct domain_device {TYPE_1__* rphy; struct expander_device ex_dev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int sas_port_add (scalar_t__) ;
 int sas_port_add_phy (scalar_t__,int ) ;
 scalar_t__ sas_port_alloc (int *,int) ;
 int sas_port_mark_backlink (scalar_t__) ;

__attribute__((used)) static inline void sas_add_parent_port(struct domain_device *dev, int phy_id)
{
 struct expander_device *ex = &dev->ex_dev;
 struct ex_phy *ex_phy = &ex->ex_phy[phy_id];

 if (!ex->parent_port) {
  ex->parent_port = sas_port_alloc(&dev->rphy->dev, phy_id);

  BUG_ON(!ex->parent_port);
  BUG_ON(sas_port_add(ex->parent_port));
  sas_port_mark_backlink(ex->parent_port);
 }
 sas_port_add_phy(ex->parent_port, ex_phy->phy);
}
