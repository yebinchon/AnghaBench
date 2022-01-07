
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int IL_NUM_RX_CHAINS_MULTIPLE ;
 int IL_NUM_RX_CHAINS_SINGLE ;
 scalar_t__ il4965_is_single_rx_stream (struct il_priv*) ;

__attribute__((used)) static int
il4965_get_active_rx_chain_count(struct il_priv *il)
{

 if (il4965_is_single_rx_stream(il))
  return IL_NUM_RX_CHAINS_SINGLE;
 else
  return IL_NUM_RX_CHAINS_MULTIPLE;
}
