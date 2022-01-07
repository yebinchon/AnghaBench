
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ackid; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct ldc_packet {scalar_t__ stype; int seqid; TYPE_2__ u; int env; } ;
struct ldc_channel {int hs_state; int rcv_nxt; } ;


 int HS ;
 int LDC_EVENT_UP ;
 int LDC_HS_COMPLETE ;
 scalar_t__ LDC_INFO ;
 int LDC_STATE_CONNECTED ;
 int ldc_abort (struct ldc_channel*) ;
 int ldc_set_state (struct ldc_channel*,int ) ;
 int ldcdbg (int ,char*,scalar_t__,int ,int ,int ) ;
 int rx_seq_ok (struct ldc_channel*,int ) ;

__attribute__((used)) static int process_rdx(struct ldc_channel *lp,
         struct ldc_packet *p)
{
 ldcdbg(HS, "GOT RDX stype[%x] seqid[%x] env[%x] ackid[%x]\n",
        p->stype, p->seqid, p->env, p->u.r.ackid);

 if (p->stype != LDC_INFO ||
     !(rx_seq_ok(lp, p->seqid)))
  return ldc_abort(lp);

 lp->rcv_nxt = p->seqid;

 lp->hs_state = LDC_HS_COMPLETE;
 ldc_set_state(lp, LDC_STATE_CONNECTED);

 return LDC_EVENT_UP;
}
