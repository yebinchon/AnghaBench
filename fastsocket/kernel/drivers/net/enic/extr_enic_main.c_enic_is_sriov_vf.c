
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enic {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_CISCO_VIC_ENET_VF ;

__attribute__((used)) static int enic_is_sriov_vf(struct enic *enic)
{
 return enic->pdev->device == PCI_DEVICE_ID_CISCO_VIC_ENET_VF;
}
