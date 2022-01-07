
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {unsigned short device; } ;


 unsigned short PCI_DEVICE_ID_QLOGIC_QLE834X ;
 unsigned short PCI_DEVICE_ID_QLOGIC_VF_QLE834X ;

__attribute__((used)) static inline u32 qlcnic_get_ref_handle(struct qlcnic_adapter *adapter,
     u16 handle, u8 ring_id)
{
 unsigned short device = adapter->pdev->device;

 if ((device == PCI_DEVICE_ID_QLOGIC_QLE834X) ||
     (device == PCI_DEVICE_ID_QLOGIC_VF_QLE834X))
  return handle | (ring_id << 15);
 else
  return handle;
}
