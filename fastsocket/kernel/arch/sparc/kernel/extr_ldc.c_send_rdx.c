
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ackid; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct ldc_packet {TYPE_2__ u; scalar_t__ seqid; scalar_t__ env; } ;
struct ldc_channel {int rcv_nxt; scalar_t__ snd_nxt; } ;


 int EBUSY ;
 int HS ;
 int LDC_INFO ;
 int LDC_RDX ;
 struct ldc_packet* handshake_compose_ctrl (struct ldc_channel*,int ,int ,int *,int ,unsigned long*) ;
 int ldcdbg (int ,char*,scalar_t__,scalar_t__,int ) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int send_rdx(struct ldc_channel *lp)
{
 struct ldc_packet *p;
 unsigned long new_tail;

 p = handshake_compose_ctrl(lp, LDC_INFO, LDC_RDX, ((void*)0), 0,
       &new_tail);
 if (p) {
  p->env = 0;
  p->seqid = ++lp->snd_nxt;
  p->u.r.ackid = lp->rcv_nxt;

  ldcdbg(HS, "SEND RDX env[0x%x] seqid[0x%x] ackid[0x%x]\n",
         p->env, p->seqid, p->u.r.ackid);

  return send_tx_packet(lp, p, new_tail);
 }
 return -EBUSY;
}
