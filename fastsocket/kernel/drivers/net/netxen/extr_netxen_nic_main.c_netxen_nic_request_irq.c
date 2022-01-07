
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int name; int irq; } ;
struct netxen_recv_context {struct nx_host_sds_ring* sds_rings; } ;
struct netxen_adapter {int flags; int max_sds_rings; int irq; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {char* name; int irq; } ;
typedef int irq_handler_t ;


 unsigned long IRQF_SAMPLE_RANDOM ;
 unsigned long IRQF_SHARED ;
 int NETXEN_NIC_MSIX_ENABLED ;
 int NETXEN_NIC_MSI_ENABLED ;
 int netxen_intr ;
 int netxen_msi_intr ;
 int netxen_msix_intr ;
 int request_irq (int ,int ,unsigned long,int ,struct nx_host_sds_ring*) ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static int
netxen_nic_request_irq(struct netxen_adapter *adapter)
{
 irq_handler_t handler;
 struct nx_host_sds_ring *sds_ring;
 int err, ring;

 unsigned long flags = IRQF_SAMPLE_RANDOM;
 struct net_device *netdev = adapter->netdev;
 struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;

 if (adapter->flags & NETXEN_NIC_MSIX_ENABLED)
  handler = netxen_msix_intr;
 else if (adapter->flags & NETXEN_NIC_MSI_ENABLED)
  handler = netxen_msi_intr;
 else {
  flags |= IRQF_SHARED;
  handler = netxen_intr;
 }
 adapter->irq = netdev->irq;

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];
  sprintf(sds_ring->name, "%s[%d]", netdev->name, ring);
  err = request_irq(sds_ring->irq, handler,
      flags, sds_ring->name, sds_ring);
  if (err)
   return err;
 }

 return 0;
}
