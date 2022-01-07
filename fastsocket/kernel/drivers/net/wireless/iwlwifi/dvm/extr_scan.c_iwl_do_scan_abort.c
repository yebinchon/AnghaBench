
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; int mutex; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,...) ;
 int STATUS_SCANNING ;
 int STATUS_SCAN_ABORTING ;
 int iwl_force_scan_end (struct iwl_priv*) ;
 int iwl_send_scan_abort (struct iwl_priv*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwl_do_scan_abort(struct iwl_priv *priv)
{
 int ret;

 lockdep_assert_held(&priv->mutex);

 if (!test_bit(STATUS_SCANNING, &priv->status)) {
  IWL_DEBUG_SCAN(priv, "Not performing scan to abort\n");
  return;
 }

 if (test_and_set_bit(STATUS_SCAN_ABORTING, &priv->status)) {
  IWL_DEBUG_SCAN(priv, "Scan abort in progress\n");
  return;
 }

 ret = iwl_send_scan_abort(priv);
 if (ret) {
  IWL_DEBUG_SCAN(priv, "Send scan abort failed %d\n", ret);
  iwl_force_scan_end(priv);
 } else
  IWL_DEBUG_SCAN(priv, "Successfully send scan abort\n");
}
