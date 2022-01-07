
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_cee_stats {int dummy; } ;
struct TYPE_4__ {int get_stats_cbarg; int (* get_stats_cbfn ) (int ,int) ;} ;
struct TYPE_3__ {int kva; } ;
struct bfa_cee {int get_stats_status; int get_stats_pending; TYPE_2__ cbfn; int stats; TYPE_1__ stats_dma; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int BFA_STATUS_OK ;
 int bfa_cee_stats_swap (int ) ;
 int memcpy (int ,int ,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
bfa_cee_get_stats_isr(struct bfa_cee *cee, enum bfa_status status)
{
 cee->get_stats_status = status;
 if (status == BFA_STATUS_OK) {
  memcpy(cee->stats, cee->stats_dma.kva,
   sizeof(struct bfa_cee_stats));
  bfa_cee_stats_swap(cee->stats);
 }
 cee->get_stats_pending = 0;
 if (cee->cbfn.get_stats_cbfn)
  cee->cbfn.get_stats_cbfn(cee->cbfn.get_stats_cbarg, status);
}
