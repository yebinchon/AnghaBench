
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {struct domain_device* domain_dev; } ;
struct domain_device {scalar_t__ parent; } ;


 int SCU_SSP_REMOTE_NODE_COUNT ;
 int SCU_STP_REMOTE_NODE_COUNT ;
 scalar_t__ dev_is_sata (struct domain_device*) ;

__attribute__((used)) static inline int sci_remote_device_node_count(struct isci_remote_device *idev)
{
 struct domain_device *dev = idev->domain_dev;

 if (dev_is_sata(dev) && dev->parent)
  return SCU_STP_REMOTE_NODE_COUNT;
 return SCU_SSP_REMOTE_NODE_COUNT;
}
