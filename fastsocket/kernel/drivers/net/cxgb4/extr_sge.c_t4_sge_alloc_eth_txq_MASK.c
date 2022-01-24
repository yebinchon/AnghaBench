#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tx_sw_desc {int dummy; } ;
struct tx_desc {int dummy; } ;
struct TYPE_2__ {int size; int /*<<< orphan*/ * desc; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/ * sdesc; } ;
struct sge_eth_txq {scalar_t__ mapping_err; scalar_t__ vlan_ins; scalar_t__ tx_cso; scalar_t__ tso; struct netdev_queue* txq; TYPE_1__ q; } ;
struct port_info {int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  viid; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct fw_eq_eth_cmd {int /*<<< orphan*/  eqid_pkd; int /*<<< orphan*/  eqaddr; void* dcaen_to_eqsize; void* fetchszm_to_iqid; void* viid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int ENOMEM ; 
 int FW_CMD_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST ; 
 int FW_CMD_WRITE ; 
 int /*<<< orphan*/  FW_EQ_ETH_CMD ; 
 int FW_EQ_ETH_CMD_ALLOC ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FW_EQ_ETH_CMD_EQSTART ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct fw_eq_eth_cmd) ; 
 int STAT_LEN ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct fw_eq_eth_cmd*,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (struct adapter*,int /*<<< orphan*/ ,struct fw_eq_eth_cmd*,int,struct fw_eq_eth_cmd*) ; 

int FUNC24(struct adapter *adap, struct sge_eth_txq *txq,
			 struct net_device *dev, struct netdev_queue *netdevq,
			 unsigned int iqid)
{
	int ret, nentries;
	struct fw_eq_eth_cmd c;
	struct port_info *pi = FUNC21(dev);

	/* Add status entries */
	nentries = txq->q.size + STAT_LEN / sizeof(struct tx_desc);

	txq->q.desc = FUNC14(adap->pdev_dev, txq->q.size,
			sizeof(struct tx_desc), sizeof(struct tx_sw_desc),
			&txq->q.phys_addr, &txq->q.sdesc, STAT_LEN);
	if (!txq->q.desc)
		return -ENOMEM;

	FUNC20(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC17(FUNC0(FW_EQ_ETH_CMD) | FW_CMD_REQUEST |
			    FW_CMD_WRITE | FW_CMD_EXEC |
			    FUNC10(adap->fn) | FUNC11(0));
	c.alloc_to_len16 = FUNC17(FW_EQ_ETH_CMD_ALLOC |
				 FW_EQ_ETH_CMD_EQSTART | FUNC13(c));
	c.viid_pkd = FUNC17(FUNC12(pi->viid));
	c.fetchszm_to_iqid = FUNC17(FUNC7(2) |
				   FUNC9(pi->tx_chan) |
				   FUNC6(1) |
				   FUNC8(iqid));
	c.dcaen_to_eqsize = FUNC17(FUNC5(2) |
				  FUNC4(3) |
				  FUNC1(5) |
				  FUNC3(nentries));
	c.eqaddr = FUNC15(txq->q.phys_addr);

	ret = FUNC23(adap, adap->fn, &c, sizeof(c), &c);
	if (ret) {
		FUNC19(txq->q.sdesc);
		txq->q.sdesc = NULL;
		FUNC16(adap->pdev_dev,
				  nentries * sizeof(struct tx_desc),
				  txq->q.desc, txq->q.phys_addr);
		txq->q.desc = NULL;
		return ret;
	}

	FUNC18(adap, &txq->q, FUNC2(FUNC22(c.eqid_pkd)));
	txq->txq = netdevq;
	txq->tso = txq->tx_cso = txq->vlan_ins = 0;
	txq->mapping_err = 0;
	return 0;
}