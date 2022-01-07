
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; } ;


 int CMD_ASYNC ;
 int STATUS_EXIT_PENDING ;
 int iwl_is_ready_rf (struct iwl_priv*) ;
 int iwl_send_statistics_request (struct iwl_priv*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_bg_statistics_periodic(unsigned long data)
{
 struct iwl_priv *priv = (struct iwl_priv *)data;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;


 if (!iwl_is_ready_rf(priv))
  return;

 iwl_send_statistics_request(priv, CMD_ASYNC, 0);
}
