
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_eth_txq {scalar_t__ vlan_ins; scalar_t__ tx_cso; scalar_t__ tso; } ;
struct TYPE_4__ {scalar_t__ lro_merged; scalar_t__ lro_pkts; scalar_t__ vlan_ex; scalar_t__ rx_cso; } ;
struct sge_eth_rxq {TYPE_2__ stats; } ;
struct queue_port_stats {int gro_merged; int gro_pkts; int vlan_ins; int vlan_ex; int rx_csum; int tx_csum; int tso; } ;
struct port_info {size_t first_qset; int nqsets; } ;
struct TYPE_3__ {struct sge_eth_rxq* ethrxq; struct sge_eth_txq* ethtxq; } ;
struct adapter {TYPE_1__ sge; } ;


 int memset (struct queue_port_stats*,int ,int) ;

__attribute__((used)) static void collect_sge_port_stats(const struct adapter *adap,
  const struct port_info *p, struct queue_port_stats *s)
{
 int i;
 const struct sge_eth_txq *tx = &adap->sge.ethtxq[p->first_qset];
 const struct sge_eth_rxq *rx = &adap->sge.ethrxq[p->first_qset];

 memset(s, 0, sizeof(*s));
 for (i = 0; i < p->nqsets; i++, rx++, tx++) {
  s->tso += tx->tso;
  s->tx_csum += tx->tx_cso;
  s->rx_csum += rx->stats.rx_cso;
  s->vlan_ex += rx->stats.vlan_ex;
  s->vlan_ins += tx->vlan_ins;
  s->gro_pkts += rx->stats.lro_pkts;
  s->gro_merged += rx->stats.lro_merged;
 }
}
