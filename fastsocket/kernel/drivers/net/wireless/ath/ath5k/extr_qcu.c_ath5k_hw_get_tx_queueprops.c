
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_txq_info {int dummy; } ;
struct ath5k_hw {int * ah_txq; } ;


 int memcpy (struct ath5k_txq_info*,int *,int) ;

int
ath5k_hw_get_tx_queueprops(struct ath5k_hw *ah, int queue,
  struct ath5k_txq_info *queue_info)
{
 memcpy(queue_info, &ah->ah_txq[queue], sizeof(struct ath5k_txq_info));
 return 0;
}
