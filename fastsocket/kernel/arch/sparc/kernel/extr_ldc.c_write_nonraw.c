
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_5__ {int * r_data; } ;
struct TYPE_6__ {TYPE_2__ r; int * u_data; } ;
struct ldc_packet {int env; void* seqid; scalar_t__ ctrl; int stype; int type; TYPE_3__ u; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct ldc_channel {unsigned long tx_tail; scalar_t__ chan_state; int mss; void* snd_nxt; TYPE_1__ cfg; struct ldc_packet* tx_base; int tx_head; int id; } ;


 int BUG_ON (int) ;
 int DATA ;
 int EAGAIN ;
 int EBUSY ;
 scalar_t__ LDC_CHANNEL_UP ;
 int LDC_DATA ;
 int LDC_INFO ;
 int LDC_LEN ;
 scalar_t__ LDC_MODE_UNRELIABLE ;
 unsigned long LDC_PACKET_SIZE ;
 int LDC_START ;
 int LDC_STOP ;
 int ldc_abort (struct ldc_channel*) ;
 int ldcdbg (int ,char*,int ,int ,scalar_t__,int,void*) ;
 int memcpy (int *,void const*,int) ;
 int set_tx_tail (struct ldc_channel*,unsigned long) ;
 unsigned long sun4v_ldc_tx_get_state (int ,int *,unsigned long*,scalar_t__*) ;
 unsigned long tx_advance (struct ldc_channel*,unsigned long) ;
 int tx_has_space_for (struct ldc_channel*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int write_nonraw(struct ldc_channel *lp, const void *buf,
   unsigned int size)
{
 unsigned long hv_err, tail;
 unsigned int copied;
 u32 seq;
 int err;

 hv_err = sun4v_ldc_tx_get_state(lp->id, &lp->tx_head, &lp->tx_tail,
     &lp->chan_state);
 if (unlikely(hv_err))
  return -EBUSY;

 if (unlikely(lp->chan_state != LDC_CHANNEL_UP))
  return ldc_abort(lp);

 if (!tx_has_space_for(lp, size))
  return -EAGAIN;

 seq = lp->snd_nxt;
 copied = 0;
 tail = lp->tx_tail;
 while (copied < size) {
  struct ldc_packet *p = lp->tx_base + (tail / LDC_PACKET_SIZE);
  u8 *data = ((lp->cfg.mode == LDC_MODE_UNRELIABLE) ?
       p->u.u_data :
       p->u.r.r_data);
  int data_len;

  p->type = LDC_DATA;
  p->stype = LDC_INFO;
  p->ctrl = 0;

  data_len = size - copied;
  if (data_len > lp->mss)
   data_len = lp->mss;

  BUG_ON(data_len > LDC_LEN);

  p->env = (data_len |
     (copied == 0 ? LDC_START : 0) |
     (data_len == size - copied ? LDC_STOP : 0));

  p->seqid = ++seq;

  ldcdbg(DATA, "SENT DATA [%02x:%02x:%02x:%02x:%08x]\n",
         p->type,
         p->stype,
         p->ctrl,
         p->env,
         p->seqid);

  memcpy(data, buf, data_len);
  buf += data_len;
  copied += data_len;

  tail = tx_advance(lp, tail);
 }

 err = set_tx_tail(lp, tail);
 if (!err) {
  lp->snd_nxt = seq;
  err = size;
 }

 return err;
}
