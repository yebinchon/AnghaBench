
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct register_write {int dummy; } ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
typedef int rsp_status ;
struct TYPE_2__ {int multi_write_idx; int multi_write_mutex; int multi_write; int mwrite_cnt; } ;


 int WMI ;
 int WMI_REG_WRITE_CMDID ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_wmi_cmd (TYPE_1__*,int ,int *,int,int *,int,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;
 int atomic_dec (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ath9k_regwrite_flush(void *hw_priv)
{
 struct ath_hw *ah = (struct ath_hw *) hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
 u32 rsp_status;
 int r;

 atomic_dec(&priv->wmi->mwrite_cnt);

 mutex_lock(&priv->wmi->multi_write_mutex);

 if (priv->wmi->multi_write_idx) {
  r = ath9k_wmi_cmd(priv->wmi, WMI_REG_WRITE_CMDID,
     (u8 *) &priv->wmi->multi_write,
     sizeof(struct register_write) * priv->wmi->multi_write_idx,
     (u8 *) &rsp_status, sizeof(rsp_status),
     100);
  if (unlikely(r)) {
   ath_dbg(common, WMI,
    "REGISTER WRITE FAILED, multi len: %d\n",
    priv->wmi->multi_write_idx);
  }
  priv->wmi->multi_write_idx = 0;
 }

 mutex_unlock(&priv->wmi->multi_write_mutex);
}
