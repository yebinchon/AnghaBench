
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bfa_cee_stats_s {int dummy; } ;
struct TYPE_4__ {int get_stats_cbarg; int (* get_stats_cbfn ) (int ,scalar_t__) ;} ;
struct TYPE_3__ {int kva; } ;
struct bfa_cee_s {TYPE_2__ cbfn; int get_stats_pending; scalar_t__ stats; TYPE_1__ stats_dma; scalar_t__ get_stats_status; } ;
typedef scalar_t__ bfa_status_t ;


 int BFA_FALSE ;
 scalar_t__ BFA_STATUS_OK ;
 int bfa_trc (struct bfa_cee_s*,int ) ;
 int cpu_to_be32 (int ) ;
 int memcpy (scalar_t__,int ,int) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_cee_get_stats_isr(struct bfa_cee_s *cee, bfa_status_t status)
{
 u32 *buffer;
 int i;

 cee->get_stats_status = status;
 bfa_trc(cee, 0);
 if (status == BFA_STATUS_OK) {
  bfa_trc(cee, 0);
  memcpy(cee->stats, cee->stats_dma.kva,
   sizeof(struct bfa_cee_stats_s));

  buffer = (u32 *)cee->stats;
  for (i = 0; i < (sizeof(struct bfa_cee_stats_s) /
     sizeof(u32)); i++)
   buffer[i] = cpu_to_be32(buffer[i]);
 }
 cee->get_stats_pending = BFA_FALSE;
 bfa_trc(cee, 0);
 if (cee->cbfn.get_stats_cbfn) {
  bfa_trc(cee, 0);
  cee->cbfn.get_stats_cbfn(cee->cbfn.get_stats_cbarg, status);
 }
}
