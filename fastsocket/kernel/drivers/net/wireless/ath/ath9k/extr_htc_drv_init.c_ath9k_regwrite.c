
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct TYPE_2__ {int mwrite_cnt; } ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_regwrite_buffer (void*,int ,int ) ;
 int ath9k_regwrite_single (void*,int ,int ) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static void ath9k_regwrite(void *hw_priv, u32 val, u32 reg_offset)
{
 struct ath_hw *ah = (struct ath_hw *) hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 if (atomic_read(&priv->wmi->mwrite_cnt))
  ath9k_regwrite_buffer(hw_priv, val, reg_offset);
 else
  ath9k_regwrite_single(hw_priv, val, reg_offset);
}
