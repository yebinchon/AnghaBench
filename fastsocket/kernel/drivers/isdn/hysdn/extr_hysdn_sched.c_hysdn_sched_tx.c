
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {unsigned short len; } ;
struct TYPE_7__ {int net_tx_busy; unsigned short async_len; unsigned short async_channel; scalar_t__ err_log_state; int myid; scalar_t__ async_busy; int async_data; } ;
typedef TYPE_1__ hysdn_card ;


 unsigned short CHAN_CAPI ;
 unsigned short CHAN_ERRLOG ;
 unsigned short CHAN_NDIS_DATA ;
 int ERRLOG_CMD_REQ ;
 unsigned short ERRLOG_CMD_REQ_SIZE ;
 int ERRLOG_CMD_STOP ;
 unsigned short ERRLOG_CMD_STOP_SIZE ;
 scalar_t__ ERRLOG_STATE_OFF ;
 scalar_t__ ERRLOG_STATE_ON ;
 scalar_t__ ERRLOG_STATE_START ;
 scalar_t__ ERRLOG_STATE_STOP ;
 int hycapi_enable ;
 int hycapi_tx_capiack (TYPE_1__*) ;
 struct sk_buff* hycapi_tx_capiget (TYPE_1__*) ;
 int hynet_enable ;
 int hysdn_tx_netack (TYPE_1__*) ;
 struct sk_buff* hysdn_tx_netget (TYPE_1__*) ;
 int memcpy (unsigned char*,int ,unsigned short) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,unsigned short) ;
 int strcpy (unsigned char*,int ) ;

int
hysdn_sched_tx(hysdn_card *card, unsigned char *buf,
  unsigned short volatile *len, unsigned short volatile *chan,
  unsigned short maxlen)
{
 struct sk_buff *skb;

 if (card->net_tx_busy) {
  card->net_tx_busy = 0;
  hysdn_tx_netack(card);
 }

 if (card->async_busy) {
  if (card->async_len <= maxlen) {
   memcpy(buf, card->async_data, card->async_len);
   *len = card->async_len;
   *chan = card->async_channel;
   card->async_busy = 0;
   return (1);
  }
  card->async_busy = 0;
 }
 if ((card->err_log_state == ERRLOG_STATE_START) &&
     (maxlen >= ERRLOG_CMD_REQ_SIZE)) {
  strcpy(buf, ERRLOG_CMD_REQ);
  *len = ERRLOG_CMD_REQ_SIZE;
  *chan = CHAN_ERRLOG;
  card->err_log_state = ERRLOG_STATE_ON;
  return (1);
 }
 if ((card->err_log_state == ERRLOG_STATE_STOP) &&
     (maxlen >= ERRLOG_CMD_STOP_SIZE)) {
  strcpy(buf, ERRLOG_CMD_STOP);
  *len = ERRLOG_CMD_STOP_SIZE;
  *chan = CHAN_ERRLOG;
  card->err_log_state = ERRLOG_STATE_OFF;
  return (1);
 }

 if ((hynet_enable & (1 << card->myid)) &&
     (skb = hysdn_tx_netget(card)) != ((void*)0))
 {
  if (skb->len <= maxlen) {

   skb_copy_from_linear_data(skb, buf, skb->len);
   *len = skb->len;
   *chan = CHAN_NDIS_DATA;
   card->net_tx_busy = 1;
   return (1);
  } else
   hysdn_tx_netack(card);
 }
 return (0);
}
