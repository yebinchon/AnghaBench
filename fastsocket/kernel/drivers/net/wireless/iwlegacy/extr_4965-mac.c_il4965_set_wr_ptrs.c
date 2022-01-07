
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int HBUS_TARG_WRPTR ;
 int IL49_SCD_QUEUE_RDPTR (int) ;
 int il_wr (struct il_priv*,int ,int) ;
 int il_wr_prph (struct il_priv*,int ,int) ;

void
il4965_set_wr_ptrs(struct il_priv *il, int txq_id, u32 idx)
{
 il_wr(il, HBUS_TARG_WRPTR, (idx & 0xff) | (txq_id << 8));
 il_wr_prph(il, IL49_SCD_QUEUE_RDPTR(txq_id), idx);
}
