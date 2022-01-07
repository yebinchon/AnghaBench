
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int * tx_lock; } ;


 int N_TX_RINGS ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void cas_unlock_tx(struct cas *cp)
{
 int i;

 for (i = N_TX_RINGS; i > 0; i--)
  spin_unlock(&cp->tx_lock[i - 1]);
}
