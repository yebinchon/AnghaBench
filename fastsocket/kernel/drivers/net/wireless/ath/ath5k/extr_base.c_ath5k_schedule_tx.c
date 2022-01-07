
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int tx_pending; int txtq; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void
ath5k_schedule_tx(struct ath5k_hw *ah)
{
 ah->tx_pending = 1;
 tasklet_schedule(&ah->txtq);
}
