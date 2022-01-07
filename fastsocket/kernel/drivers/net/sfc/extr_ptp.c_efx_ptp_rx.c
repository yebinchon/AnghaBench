
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int* data; scalar_t__ cb; } ;
struct efx_ptp_match {int* words; int state; scalar_t__ expiry; } ;
struct efx_ptp_data {scalar_t__ mode; int work; int workwq; int rxq; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;
struct efx_channel {struct efx_nic* efx; } ;
typedef int __be16 ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ MC_CMD_PTP_MODE_V1 ;
 scalar_t__ MC_CMD_PTP_MODE_V2 ;
 scalar_t__ MC_CMD_PTP_MODE_V2_ENHANCED ;
 int PKT_EVENT_LIFETIME_MS ;
 size_t PTP_DPORT_OFFSET ;
 unsigned int PTP_EVENT_PORT ;
 int PTP_PACKET_STATE_MATCH_UNWANTED ;
 int PTP_PACKET_STATE_UNMATCHED ;
 int PTP_V1_MIN_LENGTH ;
 int PTP_V1_SEQUENCE_LENGTH ;
 int PTP_V1_SEQUENCE_OFFSET ;
 int PTP_V1_UUID_OFFSET ;
 size_t PTP_V1_VERSION_OFFSET ;
 int PTP_V2_MIN_LENGTH ;
 int PTP_V2_SEQUENCE_LENGTH ;
 int PTP_V2_SEQUENCE_OFFSET ;
 int PTP_V2_UUID_OFFSET ;
 size_t PTP_V2_VERSION_OFFSET ;
 unsigned int PTP_VERSION_V1 ;
 unsigned int PTP_VERSION_V2 ;
 unsigned int PTP_VERSION_V2_MASK ;
 scalar_t__ jiffies ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 unsigned int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int queue_work (int ,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static bool efx_ptp_rx(struct efx_channel *channel, struct sk_buff *skb)
{
 struct efx_nic *efx = channel->efx;
 struct efx_ptp_data *ptp = efx->ptp_data;
 struct efx_ptp_match *match = (struct efx_ptp_match *)skb->cb;
 u8 *match_data_012, *match_data_345;
 unsigned int version;

 match->expiry = jiffies + msecs_to_jiffies(PKT_EVENT_LIFETIME_MS);


 if (ptp->mode == MC_CMD_PTP_MODE_V1) {
  if (!pskb_may_pull(skb, PTP_V1_MIN_LENGTH)) {
   return 0;
  }
  version = ntohs(*(__be16 *)&skb->data[PTP_V1_VERSION_OFFSET]);
  if (version != PTP_VERSION_V1) {
   return 0;
  }




  match_data_012 = skb->data + PTP_V1_UUID_OFFSET;
  match_data_345 = skb->data + PTP_V1_UUID_OFFSET + 3;
 } else {
  if (!pskb_may_pull(skb, PTP_V2_MIN_LENGTH)) {
   return 0;
  }
  version = skb->data[PTP_V2_VERSION_OFFSET];
  if ((version & PTP_VERSION_V2_MASK) != PTP_VERSION_V2) {
   return 0;
  }
  match_data_345 = skb->data + PTP_V2_UUID_OFFSET + 5;
  if (ptp->mode == MC_CMD_PTP_MODE_V2) {
   match_data_012 = skb->data + PTP_V2_UUID_OFFSET + 2;
  } else {
   match_data_012 = skb->data + PTP_V2_UUID_OFFSET + 0;
   BUG_ON(ptp->mode != MC_CMD_PTP_MODE_V2_ENHANCED);
  }
 }


 if (ntohs(*(__be16 *)&skb->data[PTP_DPORT_OFFSET]) == PTP_EVENT_PORT) {
  struct skb_shared_hwtstamps *timestamps;

  match->state = PTP_PACKET_STATE_UNMATCHED;


  timestamps = skb_hwtstamps(skb);
  memset(timestamps, 0, sizeof(*timestamps));




  BUILD_BUG_ON(PTP_V1_SEQUENCE_OFFSET != PTP_V2_SEQUENCE_OFFSET);
  BUILD_BUG_ON(PTP_V1_SEQUENCE_LENGTH != PTP_V2_SEQUENCE_LENGTH);


  match->words[0] = (match_data_012[0] |
       (match_data_012[1] << 8) |
       (match_data_012[2] << 16) |
       (match_data_345[0] << 24));
  match->words[1] = (match_data_345[1] |
       (match_data_345[2] << 8) |
       (skb->data[PTP_V1_SEQUENCE_OFFSET +
           PTP_V1_SEQUENCE_LENGTH - 1] <<
        16));
 } else {
  match->state = PTP_PACKET_STATE_MATCH_UNWANTED;
 }

 skb_queue_tail(&ptp->rxq, skb);
 queue_work(ptp->workwq, &ptp->work);

 return 1;
}
