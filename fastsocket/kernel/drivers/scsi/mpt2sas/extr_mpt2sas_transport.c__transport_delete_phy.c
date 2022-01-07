
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ sas_address; } ;
struct _sas_port {int port; int num_phys; TYPE_1__ remote_identify; } ;
struct _sas_phy {scalar_t__ phy_belongs_to_port; TYPE_2__* phy; int port_siblings; int phy_id; } ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int KERN_INFO ;
 int dev_printk (int ,int *,char*,unsigned long long,int ) ;
 int list_del (int *) ;
 int sas_port_delete_phy (int ,TYPE_2__*) ;

__attribute__((used)) static void
_transport_delete_phy(struct MPT2SAS_ADAPTER *ioc,
 struct _sas_port *mpt2sas_port, struct _sas_phy *mpt2sas_phy)
{
 u64 sas_address = mpt2sas_port->remote_identify.sas_address;

 dev_printk(KERN_INFO, &mpt2sas_phy->phy->dev,
     "remove: sas_addr(0x%016llx), phy(%d)\n",
     (unsigned long long) sas_address, mpt2sas_phy->phy_id);

 list_del(&mpt2sas_phy->port_siblings);
 mpt2sas_port->num_phys--;
 sas_port_delete_phy(mpt2sas_port->port, mpt2sas_phy->phy);
 mpt2sas_phy->phy_belongs_to_port = 0;
}
