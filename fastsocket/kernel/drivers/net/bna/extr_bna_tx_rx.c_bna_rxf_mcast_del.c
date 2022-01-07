
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bna_rxf {TYPE_2__* rx; } ;
struct bna_mcam_handle {scalar_t__ refcnt; int qe; int handle; } ;
struct bna_mac {struct bna_mcam_handle* handle; } ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_4__ {TYPE_1__* bna; } ;
struct TYPE_3__ {int mcam_mod; } ;


 int BNA_HARD_CLEANUP ;
 int bfa_q_qe_init (int *) ;
 int bna_bfi_mcast_del_req (struct bna_rxf*,int ) ;
 int bna_mcam_mod_handle_put (int *,struct bna_mcam_handle*) ;
 int list_del (int *) ;

__attribute__((used)) static int
bna_rxf_mcast_del(struct bna_rxf *rxf, struct bna_mac *mac,
  enum bna_cleanup_type cleanup)
{
 struct bna_mcam_handle *mchandle;
 int ret = 0;

 mchandle = mac->handle;
 if (mchandle == ((void*)0))
  return ret;

 mchandle->refcnt--;
 if (mchandle->refcnt == 0) {
  if (cleanup == BNA_HARD_CLEANUP) {
   bna_bfi_mcast_del_req(rxf, mchandle->handle);
   ret = 1;
  }
  list_del(&mchandle->qe);
  bfa_q_qe_init(&mchandle->qe);
  bna_mcam_mod_handle_put(&rxf->rx->bna->mcam_mod, mchandle);
 }
 mac->handle = ((void*)0);

 return ret;
}
