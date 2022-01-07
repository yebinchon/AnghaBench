
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smps; } ;
struct il_priv {TYPE_1__ current_ht_config; } ;





 int IL_NUM_IDLE_CHAINS_SINGLE ;
 int WARN (int,char*,int) ;

__attribute__((used)) static int
il4965_get_idle_rx_chain_count(struct il_priv *il, int active_cnt)
{

 switch (il->current_ht_config.smps) {
 case 128:
 case 130:
  return IL_NUM_IDLE_CHAINS_SINGLE;
 case 129:
  return active_cnt;
 default:
  WARN(1, "invalid SMPS mode %d", il->current_ht_config.smps);
  return active_cnt;
 }
}
