
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int index; int length; int payload; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {int control_bits; int message_type; } ;
struct tfd_frame {TYPE_3__ u; TYPE_1__ control_flags; } ;
struct clx2_queue {size_t first_empty; int reg_w; int n_bd; } ;
struct clx2_tx_queue {int ** txb; struct tfd_frame* bd; struct clx2_queue q; } ;
struct ipw_priv {int hcmd_seq; struct clx2_tx_queue txq_cmd; } ;


 int EBUSY ;
 int IPW_ERROR (char*) ;
 int TFD_NEED_IRQ_MASK ;
 int TX_HOST_COMMAND_TYPE ;
 int _ipw_read32 (struct ipw_priv*,int) ;
 size_t ipw_queue_inc_wrap (size_t,int ) ;
 int ipw_tx_queue_space (struct clx2_queue*) ;
 int ipw_write32 (struct ipw_priv*,int ,size_t) ;
 int memcpy (int ,void*,int) ;
 int memset (struct tfd_frame*,int ,int) ;

__attribute__((used)) static int ipw_queue_tx_hcmd(struct ipw_priv *priv, int hcmd, void *buf,
        int len, int sync)
{
 struct clx2_tx_queue *txq = &priv->txq_cmd;
 struct clx2_queue *q = &txq->q;
 struct tfd_frame *tfd;

 if (ipw_tx_queue_space(q) < (sync ? 1 : 2)) {
  IPW_ERROR("No space for Tx\n");
  return -EBUSY;
 }

 tfd = &txq->bd[q->first_empty];
 txq->txb[q->first_empty] = ((void*)0);

 memset(tfd, 0, sizeof(*tfd));
 tfd->control_flags.message_type = TX_HOST_COMMAND_TYPE;
 tfd->control_flags.control_bits = TFD_NEED_IRQ_MASK;
 priv->hcmd_seq++;
 tfd->u.cmd.index = hcmd;
 tfd->u.cmd.length = len;
 memcpy(tfd->u.cmd.payload, buf, len);
 q->first_empty = ipw_queue_inc_wrap(q->first_empty, q->n_bd);
 ipw_write32(priv, q->reg_w, q->first_empty);
 _ipw_read32(priv, 0x90);

 return 0;
}
