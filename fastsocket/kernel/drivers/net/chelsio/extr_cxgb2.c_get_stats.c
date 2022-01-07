
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sge_port_stats {int tx_need_hdrroom; int vlan_insert; int vlan_xtract; int tx_tso; int tx_cso; int rx_cso_good; } ;
struct sge_intr_counts {int * cmdQ_full; int pkt_mismatch; int pkt_too_big; int freelistQ_empty; int respQ_overflow; int respQ_empty; int unhandled_irqs; int pure_rsps; int rx_drops; } ;
struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct ethtool_stats {int dummy; } ;
struct espi_intr_counts {int parity_err; int rx_ovflw; int tx_drops; int rx_drops; int DIP4_err; int DIP2_parity_err; } ;
struct cmac_statistics {int RxJumboOctetsOK; int RxJumboFramesOK; int RxFrameTooLongErrors; int RxOutOfRangeLengthField; int RxInRangeLengthErrors; int RxInternalMACRcvError; int RxJabberErrors; int RxRuntErrors; int RxSequenceErrors; int RxDataErrors; int RxSymbolErrors; int RxAlignErrors; int RxFCSErrors; int RxPauseFrames; int RxBroadcastFramesOK; int RxMulticastFramesOK; int RxUnicastFramesOK; int RxOctetsBad; int RxOctetsOK; int TxJumboOctetsOK; int TxJumboFramesOK; int TxFCSErrors; int TxFramesWithExcessiveDeferral; int TxInternalMACXmitError; int TxLengthErrors; int TxUnderrun; int TxFramesAbortedDueToXSCollisions; int TxTotalCollisions; int TxLateCollisions; int TxFramesWithDeferredXmissions; int TxPauseFrames; int TxBroadcastFramesOK; int TxMulticastFramesOK; int TxUnicastFramesOK; int TxOctetsBad; int TxOctetsOK; } ;
struct cmac {TYPE_2__* ops; } ;
struct adapter {scalar_t__ espi; int sge; TYPE_1__* port; } ;
struct TYPE_4__ {struct cmac_statistics* (* statistics_update ) (struct cmac*,int ) ;} ;
struct TYPE_3__ {struct cmac* mac; } ;


 int MAC_STATS_UPDATE_FULL ;
 struct cmac_statistics* stub1 (struct cmac*,int ) ;
 struct espi_intr_counts* t1_espi_get_intr_counts (scalar_t__) ;
 struct sge_intr_counts* t1_sge_get_intr_counts (int ) ;
 int t1_sge_get_port_stats (int ,size_t,struct sge_port_stats*) ;

__attribute__((used)) static void get_stats(struct net_device *dev, struct ethtool_stats *stats,
        u64 *data)
{
 struct adapter *adapter = dev->ml_priv;
 struct cmac *mac = adapter->port[dev->if_port].mac;
 const struct cmac_statistics *s;
 const struct sge_intr_counts *t;
 struct sge_port_stats ss;

 s = mac->ops->statistics_update(mac, MAC_STATS_UPDATE_FULL);
 t = t1_sge_get_intr_counts(adapter->sge);
 t1_sge_get_port_stats(adapter->sge, dev->if_port, &ss);

 *data++ = s->TxOctetsOK;
 *data++ = s->TxOctetsBad;
 *data++ = s->TxUnicastFramesOK;
 *data++ = s->TxMulticastFramesOK;
 *data++ = s->TxBroadcastFramesOK;
 *data++ = s->TxPauseFrames;
 *data++ = s->TxFramesWithDeferredXmissions;
 *data++ = s->TxLateCollisions;
 *data++ = s->TxTotalCollisions;
 *data++ = s->TxFramesAbortedDueToXSCollisions;
 *data++ = s->TxUnderrun;
 *data++ = s->TxLengthErrors;
 *data++ = s->TxInternalMACXmitError;
 *data++ = s->TxFramesWithExcessiveDeferral;
 *data++ = s->TxFCSErrors;
 *data++ = s->TxJumboFramesOK;
 *data++ = s->TxJumboOctetsOK;

 *data++ = s->RxOctetsOK;
 *data++ = s->RxOctetsBad;
 *data++ = s->RxUnicastFramesOK;
 *data++ = s->RxMulticastFramesOK;
 *data++ = s->RxBroadcastFramesOK;
 *data++ = s->RxPauseFrames;
 *data++ = s->RxFCSErrors;
 *data++ = s->RxAlignErrors;
 *data++ = s->RxSymbolErrors;
 *data++ = s->RxDataErrors;
 *data++ = s->RxSequenceErrors;
 *data++ = s->RxRuntErrors;
 *data++ = s->RxJabberErrors;
 *data++ = s->RxInternalMACRcvError;
 *data++ = s->RxInRangeLengthErrors;
 *data++ = s->RxOutOfRangeLengthField;
 *data++ = s->RxFrameTooLongErrors;
 *data++ = s->RxJumboFramesOK;
 *data++ = s->RxJumboOctetsOK;

 *data++ = ss.rx_cso_good;
 *data++ = ss.tx_cso;
 *data++ = ss.tx_tso;
 *data++ = ss.vlan_xtract;
 *data++ = ss.vlan_insert;
 *data++ = ss.tx_need_hdrroom;

 *data++ = t->rx_drops;
 *data++ = t->pure_rsps;
 *data++ = t->unhandled_irqs;
 *data++ = t->respQ_empty;
 *data++ = t->respQ_overflow;
 *data++ = t->freelistQ_empty;
 *data++ = t->pkt_too_big;
 *data++ = t->pkt_mismatch;
 *data++ = t->cmdQ_full[0];
 *data++ = t->cmdQ_full[1];

 if (adapter->espi) {
  const struct espi_intr_counts *e;

  e = t1_espi_get_intr_counts(adapter->espi);
  *data++ = e->DIP2_parity_err;
  *data++ = e->DIP4_err;
  *data++ = e->rx_drops;
  *data++ = e->tx_drops;
  *data++ = e->rx_ovflw;
  *data++ = e->parity_err;
 }
}
