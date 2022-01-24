#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct ulptx_sgl {int dummy; } ;
struct skb_shared_info {int gso_size; int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int len; scalar_t__ ip_summed; } ;
struct TYPE_14__ {size_t pidx; int size; TYPE_1__* sdesc; int /*<<< orphan*/ * desc; } ;
struct sge_eth_txq {TYPE_4__ q; int /*<<< orphan*/  vlan_ins; scalar_t__ tx_cso; int /*<<< orphan*/  tso; int /*<<< orphan*/  mapping_err; } ;
struct port_info {int first_qset; int /*<<< orphan*/  tx_chan; struct adapter* adapter; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct fw_eth_tx_pkt_wr {void* op_immdlen; void* r3; void* equiq_to_len16; } ;
struct TYPE_13__ {void* len; void* seqno_offset; void* mss; void* ipid_ofst; void* lso_ctrl; } ;
struct cpl_tx_pkt_lso {TYPE_3__ c; } ;
struct cpl_tx_pkt_core {void* ctrl1; void* len; void* pack; void* ctrl0; } ;
struct TYPE_12__ {struct sge_eth_txq* ethtxq; } ;
struct adapter {int /*<<< orphan*/  fn; int /*<<< orphan*/  pdev_dev; TYPE_2__ sge; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_15__ {int /*<<< orphan*/  doff; } ;
struct TYPE_11__ {struct ulptx_sgl* sgl; struct sk_buff* skb; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CPL_TX_PKT_LSO ; 
 int /*<<< orphan*/  CPL_TX_PKT_XT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int ETHTXQ_STOP_THRES ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  FW_ETH_TX_PKT_WR ; 
 int FW_WR_EQUEQ ; 
 int FW_WR_EQUIQ ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int LSO_FIRST_SLICE ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int LSO_LAST_SLICE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SKB_GSO_TCPV6 ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int TXPKT_IPCSUM_DIS ; 
 int FUNC12 (int) ; 
 int TXPKT_L4CSUM_DIS ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int TXPKT_VLAN_VLD ; 
 int /*<<< orphan*/  TX_CSUM_TCPIP ; 
 int /*<<< orphan*/  TX_CSUM_TCPIP6 ; 
 unsigned int FUNC16 (struct sk_buff*) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sge_eth_txq*) ; 
 unsigned int FUNC21 (unsigned int) ; 
 void* FUNC22 (int) ; 
 void* FUNC23 (int) ; 
 int FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,TYPE_4__*,struct cpl_tx_pkt_core*) ; 
 scalar_t__ FUNC26 (struct sk_buff*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct port_info* FUNC28 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct adapter*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct adapter*,TYPE_4__*,unsigned int) ; 
 int FUNC31 (struct sk_buff*) ; 
 int FUNC32 (struct sk_buff*) ; 
 int FUNC33 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC35 (struct sk_buff*) ; 
 TYPE_7__* FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*,unsigned int) ; 
 unsigned int FUNC38 (TYPE_4__*) ; 
 scalar_t__ FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (struct sk_buff*) ; 
 scalar_t__ FUNC41 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC42 (struct sk_buff*,TYPE_4__*,struct ulptx_sgl*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

netdev_tx_t FUNC43(struct sk_buff *skb, struct net_device *dev)
{
	u32 wr_mid;
	u64 cntrl, *end;
	int qidx, credits;
	unsigned int flits, ndesc;
	struct adapter *adap;
	struct sge_eth_txq *q;
	const struct port_info *pi;
	struct fw_eth_tx_pkt_wr *wr;
	struct cpl_tx_pkt_core *cpl;
	const struct skb_shared_info *ssi;
	dma_addr_t addr[MAX_SKB_FRAGS + 1];

	/*
	 * The chip min packet length is 10 octets but play safe and reject
	 * anything shorter than an Ethernet header.
	 */
	if (FUNC39(skb->len < ETH_HLEN)) {
out_free:	FUNC19(skb);
		return NETDEV_TX_OK;
	}

	pi = FUNC28(dev);
	adap = pi->adapter;
	qidx = FUNC31(skb);
	q = &adap->sge.ethtxq[qidx + pi->first_qset];

	FUNC29(adap, &q->q, true);

	flits = FUNC16(skb);
	ndesc = FUNC21(flits);
	credits = FUNC38(&q->q) - ndesc;

	if (FUNC39(credits < 0)) {
		FUNC20(q);
		FUNC18(adap->pdev_dev,
			"%s: Tx ring %u full while queue awake!\n",
			dev->name, qidx);
		return NETDEV_TX_BUSY;
	}

	if (!FUNC26(skb) &&
	    FUNC39(FUNC27(adap->pdev_dev, skb, addr) < 0)) {
		q->mapping_err++;
		goto out_free;
	}

	wr_mid = FUNC2(FUNC0(flits, 2));
	if (FUNC39(credits < ETHTXQ_STOP_THRES)) {
		FUNC20(q);
		wr_mid |= FW_WR_EQUEQ | FW_WR_EQUIQ;
	}

	wr = (void *)&q->q.desc[q->q.pidx];
	wr->equiq_to_len16 = FUNC22(wr_mid);
	wr->r3 = FUNC17(0);
	end = (u64 *)wr + flits;

	ssi = FUNC35(skb);
	if (ssi->gso_size) {
		struct cpl_tx_pkt_lso *lso = (void *)wr;
		bool v6 = (ssi->gso_type & SKB_GSO_TCPV6) != 0;
		int l3hdr_len = FUNC32(skb);
		int eth_xtra_len = FUNC33(skb) - ETH_HLEN;

		wr->op_immdlen = FUNC22(FUNC3(FW_ETH_TX_PKT_WR) |
				       FUNC1(sizeof(*lso)));
		lso->c.lso_ctrl = FUNC22(FUNC7(CPL_TX_PKT_LSO) |
					LSO_FIRST_SLICE | LSO_LAST_SLICE |
					FUNC6(v6) |
					FUNC4(eth_xtra_len / 4) |
					FUNC5(l3hdr_len / 4) |
					FUNC8(FUNC36(skb)->doff));
		lso->c.ipid_ofst = FUNC23(0);
		lso->c.mss = FUNC23(ssi->gso_size);
		lso->c.seqno_offset = FUNC22(0);
		lso->c.len = FUNC22(skb->len);
		cpl = (void *)(lso + 1);
		cntrl = FUNC9(v6 ? TX_CSUM_TCPIP6 : TX_CSUM_TCPIP) |
			FUNC12(l3hdr_len) |
			FUNC10(eth_xtra_len);
		q->tso++;
		q->tx_cso += ssi->gso_segs;
	} else {
		int len;

		len = FUNC26(skb) ? skb->len + sizeof(*cpl) : sizeof(*cpl);
		wr->op_immdlen = FUNC22(FUNC3(FW_ETH_TX_PKT_WR) |
				       FUNC1(len));
		cpl = (void *)(wr + 1);
		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			cntrl = FUNC24(skb) | TXPKT_IPCSUM_DIS;
			q->tx_cso++;
		} else
			cntrl = TXPKT_L4CSUM_DIS | TXPKT_IPCSUM_DIS;
	}

	if (FUNC41(skb)) {
		q->vlan_ins++;
		cntrl |= TXPKT_VLAN_VLD | FUNC15(FUNC40(skb));
	}

	cpl->ctrl0 = FUNC22(FUNC13(CPL_TX_PKT_XT) |
			   FUNC11(pi->tx_chan) | FUNC14(adap->fn));
	cpl->pack = FUNC23(0);
	cpl->len = FUNC23(skb->len);
	cpl->ctrl1 = FUNC17(cntrl);

	if (FUNC26(skb)) {
		FUNC25(skb, &q->q, cpl + 1);
		FUNC19(skb);
	} else {
		int last_desc;

		FUNC42(skb, &q->q, (struct ulptx_sgl *)(cpl + 1), end, 0,
			  addr);
		FUNC34(skb);

		last_desc = q->q.pidx + ndesc - 1;
		if (last_desc >= q->q.size)
			last_desc -= q->q.size;
		q->q.sdesc[last_desc].skb = skb;
		q->q.sdesc[last_desc].sgl = (struct ulptx_sgl *)(cpl + 1);
	}

	FUNC37(&q->q, ndesc);

	FUNC30(adap, &q->q, ndesc);
	return NETDEV_TX_OK;
}