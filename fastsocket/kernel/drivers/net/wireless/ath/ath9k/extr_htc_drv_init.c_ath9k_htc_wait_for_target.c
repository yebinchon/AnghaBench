
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_htc_priv {TYPE_1__* htc; int dev; } ;
struct TYPE_2__ {int tgt_ready; int target_wait; } ;


 int ETIMEDOUT ;
 int HZ ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int ,char*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ath9k_htc_wait_for_target(struct ath9k_htc_priv *priv)
{
 int time_left;

 if (atomic_read(&priv->htc->tgt_ready) > 0) {
  atomic_dec(&priv->htc->tgt_ready);
  return 0;
 }


 time_left = wait_for_completion_timeout(&priv->htc->target_wait, HZ);
 if (!time_left) {
  dev_err(priv->dev, "ath9k_htc: Target is unresponsive\n");
  return -ETIMEDOUT;
 }

 atomic_dec(&priv->htc->tgt_ready);

 return 0;
}
