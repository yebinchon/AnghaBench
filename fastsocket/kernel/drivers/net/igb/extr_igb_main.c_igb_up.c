
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int num_q_vectors; int watchdog_task; int netdev; scalar_t__ vfs_allocated_count; TYPE_2__** q_vector; scalar_t__ msix_entries; int state; struct e1000_hw hw; } ;
struct TYPE_4__ {int napi; } ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_PFRSTD ;
 int E1000_ICR ;
 int __IGB_DOWN ;
 int clear_bit (int ,int *) ;
 int igb_assign_vector (TYPE_2__*,int ) ;
 int igb_configure (struct igb_adapter*) ;
 int igb_configure_msix (struct igb_adapter*) ;
 int igb_irq_enable (struct igb_adapter*) ;
 int napi_enable (int *) ;
 int netif_tx_start_all_queues (int ) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;
 int wr32 (int ,int ) ;

int igb_up(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 int i;


 igb_configure(adapter);

 clear_bit(__IGB_DOWN, &adapter->state);

 for (i = 0; i < adapter->num_q_vectors; i++)
  napi_enable(&(adapter->q_vector[i]->napi));

 if (adapter->msix_entries)
  igb_configure_msix(adapter);
 else
  igb_assign_vector(adapter->q_vector[0], 0);


 rd32(E1000_ICR);
 igb_irq_enable(adapter);


 if (adapter->vfs_allocated_count) {
  u32 reg_data = rd32(E1000_CTRL_EXT);
  reg_data |= E1000_CTRL_EXT_PFRSTD;
  wr32(E1000_CTRL_EXT, reg_data);
 }

 netif_tx_start_all_queues(adapter->netdev);


 hw->mac.get_link_status = 1;
 schedule_work(&adapter->watchdog_task);

 return 0;
}
