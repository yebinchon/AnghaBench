
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct bna_rxf {int mcast_pending_add_q; int mcast_active_q; TYPE_2__* rx; int mcast_pending_del_q; } ;
struct bna_mac {int dummy; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_4__ {TYPE_1__* bna; } ;
struct TYPE_3__ {int mcam_mod; } ;


 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_qe_init (struct list_head*) ;
 int bna_mcam_mod_mac_put (int *,struct bna_mac*) ;
 int bna_rxf_mcast_del (struct bna_rxf*,struct bna_mac*,int) ;
 int list_add_tail (struct list_head*,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int
bna_rxf_mcast_cfg_reset(struct bna_rxf *rxf, enum bna_cleanup_type cleanup)
{
 struct list_head *qe;
 struct bna_mac *mac;
 int ret;


 while (!list_empty(&rxf->mcast_pending_del_q)) {
  bfa_q_deq(&rxf->mcast_pending_del_q, &qe);
  bfa_q_qe_init(qe);
  mac = (struct bna_mac *)qe;
  ret = bna_rxf_mcast_del(rxf, mac, cleanup);
  bna_mcam_mod_mac_put(&rxf->rx->bna->mcam_mod, mac);
  if (ret)
   return ret;
 }


 while (!list_empty(&rxf->mcast_active_q)) {
  bfa_q_deq(&rxf->mcast_active_q, &qe);
  bfa_q_qe_init(qe);
  list_add_tail(qe, &rxf->mcast_pending_add_q);
  mac = (struct bna_mac *)qe;
  if (bna_rxf_mcast_del(rxf, mac, cleanup))
   return 1;
 }

 return 0;
}
