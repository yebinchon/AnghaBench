
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bna_rxf {int mcast_handle_q; TYPE_1__* rx; } ;
struct bna_mcam_handle {int handle; scalar_t__ refcnt; int qe; } ;
struct bna_mac {struct bna_mcam_handle* handle; } ;
struct TYPE_4__ {int mcam_mod; } ;
struct TYPE_3__ {TYPE_2__* bna; } ;


 struct bna_mcam_handle* bna_mcam_mod_handle_get (int *) ;
 struct bna_mcam_handle* bna_rxf_mchandle_get (struct bna_rxf*,int) ;
 struct bna_mac* bna_rxf_mcmac_get (struct bna_rxf*,int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
bna_rxf_mchandle_attach(struct bna_rxf *rxf, u8 *mac_addr, int handle)
{
 struct bna_mac *mcmac;
 struct bna_mcam_handle *mchandle;

 mcmac = bna_rxf_mcmac_get(rxf, mac_addr);
 mchandle = bna_rxf_mchandle_get(rxf, handle);
 if (mchandle == ((void*)0)) {
  mchandle = bna_mcam_mod_handle_get(&rxf->rx->bna->mcam_mod);
  mchandle->handle = handle;
  mchandle->refcnt = 0;
  list_add_tail(&mchandle->qe, &rxf->mcast_handle_q);
 }
 mchandle->refcnt++;
 mcmac->handle = mchandle;
}
