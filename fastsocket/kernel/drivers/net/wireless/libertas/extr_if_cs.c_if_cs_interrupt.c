
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct lbs_private {int surpriseremoved; scalar_t__ resp_idx; struct if_cs_card* card; int driver_lock; int * resp_len; int * resp_buf; } ;
struct if_cs_card {struct lbs_private* priv; } ;
typedef int irqreturn_t ;


 int BUG_ON (int ) ;
 int IF_CS_BIT_EVENT ;
 int IF_CS_BIT_MASK ;
 int IF_CS_BIT_RESP ;
 int IF_CS_BIT_RX ;
 int IF_CS_BIT_TX ;
 int IF_CS_CARD_INT_CAUSE ;
 int IF_CS_CARD_STATUS ;
 int IF_CS_CARD_STATUS_MASK ;
 int IF_CS_HOST_INT_CAUSE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LBS_DEB_CS ;
 int if_cs_read16 (struct if_cs_card*,int ) ;
 int if_cs_receive_cmdres (struct lbs_private*,int ,int *) ;
 struct sk_buff* if_cs_receive_data (struct lbs_private*) ;
 int if_cs_write16 (struct if_cs_card*,int ,int) ;
 int lbs_deb_cs (char*,...) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_host_to_card_done (struct lbs_private*) ;
 int lbs_notify_command_response (struct lbs_private*,size_t) ;
 int lbs_process_rxed_packet (struct lbs_private*,struct sk_buff*) ;
 int lbs_queue_event (struct lbs_private*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t if_cs_interrupt(int irq, void *data)
{
 struct if_cs_card *card = data;
 struct lbs_private *priv = card->priv;
 u16 cause;

 lbs_deb_enter(LBS_DEB_CS);


 cause = if_cs_read16(card, IF_CS_CARD_INT_CAUSE);
 lbs_deb_cs("cause 0x%04x\n", cause);

 if (cause == 0) {

  return IRQ_NONE;
 }

 if (cause == 0xffff) {

  card->priv->surpriseremoved = 1;
  return IRQ_HANDLED;
 }

 if (cause & IF_CS_BIT_RX) {
  struct sk_buff *skb;
  lbs_deb_cs("rx packet\n");
  skb = if_cs_receive_data(priv);
  if (skb)
   lbs_process_rxed_packet(priv, skb);
 }

 if (cause & IF_CS_BIT_TX) {
  lbs_deb_cs("tx done\n");
  lbs_host_to_card_done(priv);
 }

 if (cause & IF_CS_BIT_RESP) {
  unsigned long flags;
  u8 i;

  lbs_deb_cs("cmd resp\n");
  spin_lock_irqsave(&priv->driver_lock, flags);
  i = (priv->resp_idx == 0) ? 1 : 0;
  spin_unlock_irqrestore(&priv->driver_lock, flags);

  BUG_ON(priv->resp_len[i]);
  if_cs_receive_cmdres(priv, priv->resp_buf[i],
   &priv->resp_len[i]);

  spin_lock_irqsave(&priv->driver_lock, flags);
  lbs_notify_command_response(priv, i);
  spin_unlock_irqrestore(&priv->driver_lock, flags);
 }

 if (cause & IF_CS_BIT_EVENT) {
  u16 status = if_cs_read16(priv->card, IF_CS_CARD_STATUS);
  if_cs_write16(priv->card, IF_CS_HOST_INT_CAUSE,
   IF_CS_BIT_EVENT);
  lbs_queue_event(priv, (status & IF_CS_CARD_STATUS_MASK) >> 8);
 }


 if_cs_write16(card, IF_CS_CARD_INT_CAUSE, cause & IF_CS_BIT_MASK);

 lbs_deb_leave(LBS_DEB_CS);
 return IRQ_HANDLED;
}
