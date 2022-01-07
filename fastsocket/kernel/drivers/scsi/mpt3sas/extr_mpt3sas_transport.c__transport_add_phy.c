
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ sas_address; } ;
struct _sas_port {int port; int num_phys; int phy_list; TYPE_1__ remote_identify; } ;
struct _sas_phy {int phy_belongs_to_port; TYPE_2__* phy; int port_siblings; int phy_id; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int KERN_INFO ;
 int dev_printk (int ,int *,char*,unsigned long long,int ) ;
 int list_add_tail (int *,int *) ;
 int sas_port_add_phy (int ,TYPE_2__*) ;

__attribute__((used)) static void
_transport_add_phy(struct MPT3SAS_ADAPTER *ioc, struct _sas_port *mpt3sas_port,
 struct _sas_phy *mpt3sas_phy)
{
 u64 sas_address = mpt3sas_port->remote_identify.sas_address;

 dev_printk(KERN_INFO, &mpt3sas_phy->phy->dev,
     "add: sas_addr(0x%016llx), phy(%d)\n", (unsigned long long)
     sas_address, mpt3sas_phy->phy_id);

 list_add_tail(&mpt3sas_phy->port_siblings, &mpt3sas_port->phy_list);
 mpt3sas_port->num_phys++;
 sas_port_add_phy(mpt3sas_port->port, mpt3sas_phy->phy);
 mpt3sas_phy->phy_belongs_to_port = 1;
}
