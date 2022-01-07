
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int bandwidth; scalar_t__ dst_type; int dst_hw_cap; int* tx_tuna; } ;
typedef int fe_bandwidth_t ;





 int DST_TYPE_HAS_CA ;
 scalar_t__ DST_TYPE_IS_TERR ;
 int EINVAL ;
 int EOPNOTSUPP ;

__attribute__((used)) static int dst_set_bandwidth(struct dst_state *state, fe_bandwidth_t bandwidth)
{
 state->bandwidth = bandwidth;

 if (state->dst_type != DST_TYPE_IS_TERR)
  return -EOPNOTSUPP;

 switch (bandwidth) {
 case 130:
  if (state->dst_hw_cap & DST_TYPE_HAS_CA)
   state->tx_tuna[7] = 0x06;
  else {
   state->tx_tuna[6] = 0x06;
   state->tx_tuna[7] = 0x00;
  }
  break;
 case 129:
  if (state->dst_hw_cap & DST_TYPE_HAS_CA)
   state->tx_tuna[7] = 0x07;
  else {
   state->tx_tuna[6] = 0x07;
   state->tx_tuna[7] = 0x00;
  }
  break;
 case 128:
  if (state->dst_hw_cap & DST_TYPE_HAS_CA)
   state->tx_tuna[7] = 0x08;
  else {
   state->tx_tuna[6] = 0x08;
   state->tx_tuna[7] = 0x00;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
