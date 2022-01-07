
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; int mutex; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 int STATUS_SCANNING ;
 int STATUS_SCAN_ABORTING ;
 int STATUS_SCAN_COMPLETE ;
 int STATUS_SCAN_HW ;
 int clear_bit (int ,int *) ;
 int iwl_complete_scan (struct iwl_priv*,int) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;

void iwl_force_scan_end(struct iwl_priv *priv)
{
 lockdep_assert_held(&priv->mutex);

 if (!test_bit(STATUS_SCANNING, &priv->status)) {
  IWL_DEBUG_SCAN(priv, "Forcing scan end while not scanning\n");
  return;
 }

 IWL_DEBUG_SCAN(priv, "Forcing scan end\n");
 clear_bit(STATUS_SCANNING, &priv->status);
 clear_bit(STATUS_SCAN_HW, &priv->status);
 clear_bit(STATUS_SCAN_ABORTING, &priv->status);
 clear_bit(STATUS_SCAN_COMPLETE, &priv->status);
 iwl_complete_scan(priv, 1);
}
