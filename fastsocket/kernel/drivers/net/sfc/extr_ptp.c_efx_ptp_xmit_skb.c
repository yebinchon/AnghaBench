
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int txtime ;
typedef int timestamps ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {scalar_t__ ip_summed; int len; } ;
struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {int * txbuf; } ;


 size_t ALIGN (int ,int) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int EIO ;
 int MCDI_DWORD (int *,int ) ;
 int MCDI_SET_DWORD (int *,int ,int ) ;
 int MC_CMD_PTP ;
 int MC_CMD_PTP_IN_TRANSMIT_LEN (int ) ;
 size_t MC_CMD_PTP_IN_TRANSMIT_PACKET_OFST ;
 int MC_CMD_PTP_OP_TRANSMIT ;
 int MC_CMD_PTP_OUT_TRANSMIT_LEN ;
 int PTP_IN_OP ;
 int PTP_IN_TRANSMIT_LENGTH ;
 int PTP_OUT_TRANSMIT_NANOSECONDS ;
 int PTP_OUT_TRANSMIT_SECONDS ;
 int dev_kfree_skb (struct sk_buff*) ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,size_t,int *,int,size_t*) ;
 int ktime_set (int ,int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int skb_checksum_help (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int *,size_t) ;
 int skb_linearize (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

__attribute__((used)) static int efx_ptp_xmit_skb(struct efx_nic *efx, struct sk_buff *skb)
{
 u8 *txbuf = efx->ptp_data->txbuf;
 struct skb_shared_hwtstamps timestamps;
 int rc = -EIO;

 size_t len = ALIGN(MC_CMD_PTP_IN_TRANSMIT_LEN(skb->len), 4);
 u8 txtime[MC_CMD_PTP_OUT_TRANSMIT_LEN];

 MCDI_SET_DWORD(txbuf, PTP_IN_OP, MC_CMD_PTP_OP_TRANSMIT);
 MCDI_SET_DWORD(txbuf, PTP_IN_TRANSMIT_LENGTH, skb->len);
 if (skb_shinfo(skb)->nr_frags != 0) {
  rc = skb_linearize(skb);
  if (rc != 0)
   goto fail;
 }

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  rc = skb_checksum_help(skb);
  if (rc != 0)
   goto fail;
 }
 skb_copy_from_linear_data(skb,
      &txbuf[MC_CMD_PTP_IN_TRANSMIT_PACKET_OFST],
      len);
 rc = efx_mcdi_rpc(efx, MC_CMD_PTP, txbuf, len, txtime,
     sizeof(txtime), &len);
 if (rc != 0)
  goto fail;

 memset(&timestamps, 0, sizeof(timestamps));
 timestamps.hwtstamp = ktime_set(
  MCDI_DWORD(txtime, PTP_OUT_TRANSMIT_SECONDS),
  MCDI_DWORD(txtime, PTP_OUT_TRANSMIT_NANOSECONDS));

 skb_tstamp_tx(skb, &timestamps);

 rc = 0;

fail:
 dev_kfree_skb(skb);

 return rc;
}
