
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int txq_ctx_active_msk; } ;


 int set_bit (int,int *) ;

__attribute__((used)) static inline void
il_txq_ctx_activate(struct il_priv *il, int txq_id)
{
 set_bit(txq_id, &il->txq_ctx_active_msk);
}
