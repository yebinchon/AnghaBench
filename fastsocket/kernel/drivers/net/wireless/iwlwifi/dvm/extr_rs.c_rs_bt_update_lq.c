
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scale_tbl_info {int current_rate; } ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int bt_full_concurrent; scalar_t__ bt_traffic_load; scalar_t__ last_bt_traffic_load; int bt_full_concurrency; int workqueue; scalar_t__ bt_ant_couple_ok; scalar_t__ bt_ci_compliance; } ;
struct iwl_lq_sta {size_t active_tbl; int lq; struct iwl_scale_tbl_info* lq_info; } ;


 int CMD_ASYNC ;
 int iwl_send_lq_cmd (struct iwl_priv*,struct iwl_rxon_context*,int *,int ,int) ;
 int queue_work (int ,int *) ;
 int rs_fill_link_cmd (struct iwl_priv*,struct iwl_lq_sta*,int ) ;

__attribute__((used)) static void rs_bt_update_lq(struct iwl_priv *priv, struct iwl_rxon_context *ctx,
       struct iwl_lq_sta *lq_sta)
{
 struct iwl_scale_tbl_info *tbl;
 bool full_concurrent = priv->bt_full_concurrent;

 if (priv->bt_ant_couple_ok) {




  if (priv->bt_ci_compliance && priv->bt_ant_couple_ok)
   full_concurrent = 1;
  else
   full_concurrent = 0;
 }
 if ((priv->bt_traffic_load != priv->last_bt_traffic_load) ||
     (priv->bt_full_concurrent != full_concurrent)) {
  priv->bt_full_concurrent = full_concurrent;
  priv->last_bt_traffic_load = priv->bt_traffic_load;


  tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
  rs_fill_link_cmd(priv, lq_sta, tbl->current_rate);
  iwl_send_lq_cmd(priv, ctx, &lq_sta->lq, CMD_ASYNC, 0);

  queue_work(priv->workqueue, &priv->bt_full_concurrency);
 }
}
