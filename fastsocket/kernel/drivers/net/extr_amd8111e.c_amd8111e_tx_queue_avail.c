
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd8111e_priv {int tx_idx; scalar_t__* tx_skbuff; } ;


 int TX_BUFF_MOD_MASK ;

__attribute__((used)) static int amd8111e_tx_queue_avail(struct amd8111e_priv* lp )
{
 int tx_index = lp->tx_idx & TX_BUFF_MOD_MASK;
 if (lp->tx_skbuff[tx_index])
  return -1;
 else
  return 0;

}
