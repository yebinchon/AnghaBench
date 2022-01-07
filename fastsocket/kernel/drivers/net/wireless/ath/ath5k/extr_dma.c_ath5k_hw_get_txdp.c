
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int q_tx_num; } ;
struct TYPE_5__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; TYPE_3__* ah_txq; TYPE_2__ ah_capabilities; } ;
struct TYPE_6__ {int tqi_type; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_ASSERT_ENTRY (unsigned int,int ) ;
 int AR5K_NOQCU_TXDP0 ;
 int AR5K_NOQCU_TXDP1 ;
 int AR5K_QUEUE_TXDP (unsigned int) ;



 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

u32
ath5k_hw_get_txdp(struct ath5k_hw *ah, unsigned int queue)
{
 u16 tx_reg;

 AR5K_ASSERT_ENTRY(queue, ah->ah_capabilities.cap_queues.q_tx_num);





 if (ah->ah_version == AR5K_AR5210) {
  switch (ah->ah_txq[queue].tqi_type) {
  case 128:
   tx_reg = AR5K_NOQCU_TXDP0;
   break;
  case 130:
  case 129:
   tx_reg = AR5K_NOQCU_TXDP1;
   break;
  default:
   return 0xffffffff;
  }
 } else {
  tx_reg = AR5K_QUEUE_TXDP(queue);
 }

 return ath5k_hw_reg_read(ah, tx_reg);
}
