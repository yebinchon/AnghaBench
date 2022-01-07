
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ehea_port {TYPE_1__* mc_list; } ;
struct ehea_mc_list {int list; int macaddr; } ;
struct TYPE_2__ {int list; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int H_REG_BCMC ;
 int INIT_LIST_HEAD (int *) ;
 int ehea_error (char*) ;
 int ehea_multicast_reg_helper (struct ehea_port*,int ,int ) ;
 int kfree (struct ehea_mc_list*) ;
 struct ehea_mc_list* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void ehea_add_multicast_entry(struct ehea_port *port, u8 *mc_mac_addr)
{
 struct ehea_mc_list *ehea_mcl_entry;
 u64 hret;

 ehea_mcl_entry = kzalloc(sizeof(*ehea_mcl_entry), GFP_ATOMIC);
 if (!ehea_mcl_entry) {
  ehea_error("no mem for mcl_entry");
  return;
 }

 INIT_LIST_HEAD(&ehea_mcl_entry->list);

 memcpy(&ehea_mcl_entry->macaddr, mc_mac_addr, ETH_ALEN);

 hret = ehea_multicast_reg_helper(port, ehea_mcl_entry->macaddr,
      H_REG_BCMC);
 if (!hret)
  list_add(&ehea_mcl_entry->list, &port->mc_list->list);
 else {
  ehea_error("failed registering mcast MAC");
  kfree(ehea_mcl_entry);
 }
}
