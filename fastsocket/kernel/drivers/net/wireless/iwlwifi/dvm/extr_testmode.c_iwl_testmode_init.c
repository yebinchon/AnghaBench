
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int trans; int tst; } ;


 int iwl_test_init (int *,int ,int *) ;
 int tst_ops ;

void iwl_testmode_init(struct iwl_priv *priv)
{
 iwl_test_init(&priv->tst, priv->trans, &tst_ops);
}
