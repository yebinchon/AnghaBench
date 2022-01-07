
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_priv {int dummy; } ;
struct ieee_ets {scalar_t__* prio_tc; int* tc_tsa; int* tc_tx_bw; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int IEEE_8021QAZ_MAX_TCS ;


 int MLX4_EN_BW_MAX ;
 scalar_t__ MLX4_EN_NUM_UP ;
 int en_err (struct mlx4_en_priv*,char*,int,...) ;

__attribute__((used)) static int mlx4_en_ets_validate(struct mlx4_en_priv *priv, struct ieee_ets *ets)
{
 int i;
 int total_ets_bw = 0;
 int has_ets_tc = 0;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  if (ets->prio_tc[i] > MLX4_EN_NUM_UP) {
   en_err(priv, "Bad priority in UP <=> TC mapping. TC: %d, UP: %d\n",
     i, ets->prio_tc[i]);
   return -EINVAL;
  }

  switch (ets->tc_tsa[i]) {
  case 128:
   break;
  case 129:
   has_ets_tc = 1;
   total_ets_bw += ets->tc_tx_bw[i];
   break;
  default:
   en_err(priv, "TC[%d]: Not supported TSA: %d\n",
     i, ets->tc_tsa[i]);
   return -ENOTSUPP;
  }
 }

 if (has_ets_tc && total_ets_bw != MLX4_EN_BW_MAX) {
  en_err(priv, "Bad ETS BW sum: %d. Should be exactly 100%%\n",
    total_ets_bw);
  return -EINVAL;
 }

 return 0;
}
