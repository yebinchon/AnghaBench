
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {TYPE_2__* tx_ring; TYPE_1__* rx_ring; struct e1000_hw hw; } ;
struct TYPE_4__ {int eims_value; } ;
struct TYPE_3__ {int eims_value; } ;


 int E1000_IVAR_VALID ;
 int IGBVF_NO_QUEUE ;
 int IVAR0 ;
 int array_er32 (int ,int) ;
 int array_ew32 (int ,int,int) ;

__attribute__((used)) static void igbvf_assign_vector(struct igbvf_adapter *adapter, int rx_queue,
                                int tx_queue, int msix_vector)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ivar, index;





 if (rx_queue > IGBVF_NO_QUEUE) {
  index = (rx_queue >> 1);
  ivar = array_er32(IVAR0, index);
  if (rx_queue & 0x1) {

   ivar = ivar & 0xFF00FFFF;
   ivar |= (msix_vector | E1000_IVAR_VALID) << 16;
  } else {

   ivar = ivar & 0xFFFFFF00;
   ivar |= msix_vector | E1000_IVAR_VALID;
  }
  adapter->rx_ring[rx_queue].eims_value = 1 << msix_vector;
  array_ew32(IVAR0, index, ivar);
 }
 if (tx_queue > IGBVF_NO_QUEUE) {
  index = (tx_queue >> 1);
  ivar = array_er32(IVAR0, index);
  if (tx_queue & 0x1) {

   ivar = ivar & 0x00FFFFFF;
   ivar |= (msix_vector | E1000_IVAR_VALID) << 24;
  } else {

   ivar = ivar & 0xFFFF00FF;
   ivar |= (msix_vector | E1000_IVAR_VALID) << 8;
  }
  adapter->tx_ring[tx_queue].eims_value = 1 << msix_vector;
  array_ew32(IVAR0, index, ivar);
 }
}
