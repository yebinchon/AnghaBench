
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int op_flags; int ani_work; } ;


 int OP_ANI_RUNNING ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;

void ath9k_htc_stop_ani(struct ath9k_htc_priv *priv)
{
 cancel_delayed_work_sync(&priv->ani_work);
 clear_bit(OP_ANI_RUNNING, &priv->op_flags);
}
