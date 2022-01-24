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
struct tx_desc {int dummy; } ;
struct TYPE_2__ {int size; int /*<<< orphan*/ * desc; int /*<<< orphan*/  phys_addr; } ;
struct sge_ctrl_txq {scalar_t__ full; int /*<<< orphan*/  qresume_tsk; int /*<<< orphan*/  sendq; struct adapter* adap; TYPE_1__ q; } ;
struct port_info {int /*<<< orphan*/  tx_chan; } ;
struct net_device {int dummy; } ;
struct fw_eq_ctrl_cmd {void* cmpliqid_eqid; int /*<<< orphan*/  eqaddr; void* dcaen_to_eqsize; void* fetchszm_to_iqid; void* physeqid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int ENOMEM ; 
 int FW_CMD_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST ; 
 int FW_CMD_WRITE ; 
 int /*<<< orphan*/  FW_EQ_CTRL_CMD ; 
 int FW_EQ_CTRL_CMD_ALLOC ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FW_EQ_CTRL_CMD_EQSTART ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FW_EQ_CTRL_CMD_FETCHRO ; 
 int FUNC7 (int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct fw_eq_ctrl_cmd) ; 
 int STAT_LEN ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct port_info* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  restart_ctrlq ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct adapter*,int /*<<< orphan*/ ,struct fw_eq_ctrl_cmd*,int,struct fw_eq_ctrl_cmd*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC23(struct adapter *adap, struct sge_ctrl_txq *txq,
			  struct net_device *dev, unsigned int iqid,
			  unsigned int cmplqid)
{
	int ret, nentries;
	struct fw_eq_ctrl_cmd c;
	struct port_info *pi = FUNC18(dev);

	/* Add status entries */
	nentries = txq->q.size + STAT_LEN / sizeof(struct tx_desc);

	txq->q.desc = FUNC13(adap->pdev_dev, nentries,
				 sizeof(struct tx_desc), 0, &txq->q.phys_addr,
				 NULL, 0);
	if (!txq->q.desc)
		return -ENOMEM;

	c.op_to_vfn = FUNC16(FUNC0(FW_EQ_CTRL_CMD) | FW_CMD_REQUEST |
			    FW_CMD_WRITE | FW_CMD_EXEC |
			    FUNC10(adap->fn) |
			    FUNC11(0));
	c.alloc_to_len16 = FUNC16(FW_EQ_CTRL_CMD_ALLOC |
				 FW_EQ_CTRL_CMD_EQSTART | FUNC12(c));
	c.cmpliqid_eqid = FUNC16(FUNC2(cmplqid));
	c.physeqid_pkd = FUNC16(0);
	c.fetchszm_to_iqid = FUNC16(FUNC7(2) |
				   FUNC9(pi->tx_chan) |
				   FW_EQ_CTRL_CMD_FETCHRO |
				   FUNC8(iqid));
	c.dcaen_to_eqsize = FUNC16(FUNC6(2) |
				  FUNC5(3) |
				  FUNC1(5) |
				  FUNC4(nentries));
	c.eqaddr = FUNC14(txq->q.phys_addr);

	ret = FUNC21(adap, adap->fn, &c, sizeof(c), &c);
	if (ret) {
		FUNC15(adap->pdev_dev,
				  nentries * sizeof(struct tx_desc),
				  txq->q.desc, txq->q.phys_addr);
		txq->q.desc = NULL;
		return ret;
	}

	FUNC17(adap, &txq->q, FUNC3(FUNC19(c.cmpliqid_eqid)));
	txq->adap = adap;
	FUNC20(&txq->sendq);
	FUNC22(&txq->qresume_tsk, restart_ctrlq, (unsigned long)txq);
	txq->full = 0;
	return 0;
}