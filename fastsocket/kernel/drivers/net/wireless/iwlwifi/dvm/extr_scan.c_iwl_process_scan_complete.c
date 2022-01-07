
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {scalar_t__ scan_type; TYPE_2__* scan_request; int scan_vif; int status; int scan_check; int mutex; } ;
struct TYPE_4__ {TYPE_1__** channels; } ;
struct TYPE_3__ {int band; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,...) ;
 scalar_t__ IWL_SCAN_NORMAL ;
 scalar_t__ IWL_SCAN_ROC ;
 int STATUS_SCANNING ;
 int STATUS_SCAN_ABORTING ;
 int STATUS_SCAN_COMPLETE ;
 int cancel_delayed_work (int *) ;
 int iwl_complete_scan (struct iwl_priv*,int) ;
 int iwl_is_ready_rf (struct iwl_priv*) ;
 int iwl_scan_initiate (struct iwl_priv*,int ,scalar_t__,int ) ;
 int iwl_scan_roc_expired (struct iwl_priv*) ;
 int iwlagn_post_scan (struct iwl_priv*) ;
 int lockdep_assert_held (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void iwl_process_scan_complete(struct iwl_priv *priv)
{
 bool aborted;

 lockdep_assert_held(&priv->mutex);

 if (!test_and_clear_bit(STATUS_SCAN_COMPLETE, &priv->status))
  return;

 IWL_DEBUG_SCAN(priv, "Completed scan.\n");

 cancel_delayed_work(&priv->scan_check);

 aborted = test_and_clear_bit(STATUS_SCAN_ABORTING, &priv->status);
 if (aborted)
  IWL_DEBUG_SCAN(priv, "Aborted scan completed.\n");

 if (!test_and_clear_bit(STATUS_SCANNING, &priv->status)) {
  IWL_DEBUG_SCAN(priv, "Scan already completed.\n");
  goto out_settings;
 }

 if (priv->scan_type == IWL_SCAN_ROC)
  iwl_scan_roc_expired(priv);

 if (priv->scan_type != IWL_SCAN_NORMAL && !aborted) {
  int err;


  if (priv->scan_request == ((void*)0))
   goto out_complete;


  err = iwl_scan_initiate(priv, priv->scan_vif, IWL_SCAN_NORMAL,
     priv->scan_request->channels[0]->band);
  if (err) {
   IWL_DEBUG_SCAN(priv,
    "failed to initiate pending scan: %d\n", err);
   aborted = 1;
   goto out_complete;
  }

  return;
 }

out_complete:
 iwl_complete_scan(priv, aborted);

out_settings:

 if (!iwl_is_ready_rf(priv))
  return;

 iwlagn_post_scan(priv);
}
