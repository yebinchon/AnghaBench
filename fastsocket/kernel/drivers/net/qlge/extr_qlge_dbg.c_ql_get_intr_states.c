
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ql_adapter {int rx_ring_count; TYPE_1__* intr_context; } ;
struct TYPE_2__ {int intr_read_mask; } ;


 int INTR_EN ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;

__attribute__((used)) static void ql_get_intr_states(struct ql_adapter *qdev, u32 *buf)
{
 int i;

 for (i = 0; i < qdev->rx_ring_count; i++, buf++) {
  ql_write32(qdev, INTR_EN,
    qdev->intr_context[i].intr_read_mask);
  *buf = ql_read32(qdev, INTR_EN);
 }
}
