
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ackid; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct ldc_packet {int ctrl; TYPE_2__ u; scalar_t__ seqid; int type; int stype; } ;
struct ldc_channel {scalar_t__ snd_nxt; int rcv_nxt; } ;


 int EBUSY ;
 int HS ;
 int LDC_CTRL_MSK ;
 int LDC_NACK ;
 struct ldc_packet* data_get_tx_packet (struct ldc_channel*,unsigned long*) ;
 int ldcdbg (int ,char*,int ,int,scalar_t__,int ) ;
 int memset (struct ldc_packet*,int ,int) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int send_data_nack(struct ldc_channel *lp, struct ldc_packet *data_pkt)
{
 struct ldc_packet *p;
 unsigned long new_tail;
 int err;

 p = data_get_tx_packet(lp, &new_tail);
 if (!p)
  return -EBUSY;
 memset(p, 0, sizeof(*p));
 p->type = data_pkt->type;
 p->stype = LDC_NACK;
 p->ctrl = data_pkt->ctrl & LDC_CTRL_MSK;
 p->seqid = lp->snd_nxt + 1;
 p->u.r.ackid = lp->rcv_nxt;

 ldcdbg(HS, "SEND DATA NACK type[0x%x] ctl[0x%x] seq[0x%x] ack[0x%x]\n",
        p->type, p->ctrl, p->seqid, p->u.r.ackid);

 err = send_tx_packet(lp, p, new_tail);
 if (!err)
  lp->snd_nxt++;

 return err;
}
