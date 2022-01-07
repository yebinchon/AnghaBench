
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 int IXGBE_EICS ;
 int IXGBE_EICS_EX (int) ;
 int IXGBE_EIMS_RTX_QUEUE ;
 int IXGBE_WRITE_REG (TYPE_2__*,int ,int) ;




__attribute__((used)) static inline void ixgbe_irq_rearm_queues(struct ixgbe_adapter *adapter,
       u64 qmask)
{
 u32 mask;

 switch (adapter->hw.mac.type) {
 case 130:
  mask = (IXGBE_EIMS_RTX_QUEUE & qmask);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS, mask);
  break;
 case 129:
 case 128:
  mask = (qmask & 0xFFFFFFFF);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS_EX(0), mask);
  mask = (qmask >> 32);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS_EX(1), mask);
  break;
 default:
  break;
 }
}
