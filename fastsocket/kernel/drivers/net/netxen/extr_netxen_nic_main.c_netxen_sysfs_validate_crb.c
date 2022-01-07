
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int flags; TYPE_1__ ahw; } ;
typedef size_t loff_t ;


 scalar_t__ ADDR_IN_RANGE (size_t,int ,int ) ;
 int EINVAL ;
 int EIO ;
 int NETXEN_NIC_DIAG_ENABLED ;
 int NETXEN_PCI_CAMQM ;
 int NETXEN_PCI_CAMQM_2M_END ;
 size_t NETXEN_PCI_CRBSPACE ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;

__attribute__((used)) static int
netxen_sysfs_validate_crb(struct netxen_adapter *adapter,
  loff_t offset, size_t size)
{
 size_t crb_size = 4;

 if (!(adapter->flags & NETXEN_NIC_DIAG_ENABLED))
  return -EIO;

 if (offset < NETXEN_PCI_CRBSPACE) {
  if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
   return -EINVAL;

  if (ADDR_IN_RANGE(offset, NETXEN_PCI_CAMQM,
      NETXEN_PCI_CAMQM_2M_END))
   crb_size = 8;
  else
   return -EINVAL;
 }

 if ((size != crb_size) || (offset & (crb_size-1)))
  return -EINVAL;

 return 0;
}
