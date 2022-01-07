
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int tst; } ;


 int iwl_test_free (int *) ;

void iwl_testmode_free(struct iwl_priv *priv)
{
 iwl_test_free(&priv->tst);
}
