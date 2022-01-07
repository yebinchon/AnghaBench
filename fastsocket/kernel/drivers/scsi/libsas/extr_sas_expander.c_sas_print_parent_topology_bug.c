
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ex_phy {int phy_id; } ;
struct domain_device {size_t dev_type; int sas_addr; struct domain_device* parent; } ;




 int SAS_ADDR (int ) ;
 int sas_printk (char*,char const*,int ,int ,char const*,int ,int ,int ,int ) ;
 int sas_route_char (struct domain_device*,struct ex_phy*) ;

__attribute__((used)) static void sas_print_parent_topology_bug(struct domain_device *child,
       struct ex_phy *parent_phy,
       struct ex_phy *child_phy)
{
 static const char *ex_type[] = {
  [129] = "edge",
  [128] = "fanout",
 };
 struct domain_device *parent = child->parent;

 sas_printk("%s ex %016llx phy 0x%x <--> %s ex %016llx "
     "phy 0x%x has %c:%c routing link!\n",

     ex_type[parent->dev_type],
     SAS_ADDR(parent->sas_addr),
     parent_phy->phy_id,

     ex_type[child->dev_type],
     SAS_ADDR(child->sas_addr),
     child_phy->phy_id,

     sas_route_char(parent, parent_phy),
     sas_route_char(child, child_phy));
}
