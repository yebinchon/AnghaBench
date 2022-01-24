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
struct sge_rspq {int size; int iqe_len; int gen; size_t cntxt_id; int offset; int /*<<< orphan*/ * desc; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  handler; struct net_device* netdev; struct adapter* adap; void* abs_id; int /*<<< orphan*/  intr_params; int /*<<< orphan*/  next_intr_params; scalar_t__ cidx; int /*<<< orphan*/ * cur_desc; int /*<<< orphan*/  napi; int /*<<< orphan*/  pktcnt_idx; } ;
struct sge_fl {int size; size_t cntxt_id; int /*<<< orphan*/ * desc; int /*<<< orphan*/  addr; int /*<<< orphan*/ * sdesc; scalar_t__ starving; scalar_t__ large_alloc_failed; scalar_t__ alloc_failed; scalar_t__ cidx; scalar_t__ pidx; scalar_t__ pend_cred; scalar_t__ avail; } ;
struct rx_sw_desc {int dummy; } ;
struct port_info {int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  viid; } ;
struct net_device {int dummy; } ;
struct fw_iq_cmd {int /*<<< orphan*/  fl0id; int /*<<< orphan*/  physiqid; int /*<<< orphan*/  iqid; void* fl0addr; void* fl0size; void* fl0dcaen_to_fl0cidxfthresh; void* iqns_to_fl0congen; void* iqaddr; void* iqsize; void* iqdroprss_to_iqesize; void* type_to_iqandstindex; void* alloc_to_len16; void* op_to_vfn; } ;
struct TYPE_2__ {size_t ingr_start; size_t egr_start; struct sge_fl** egr_map; struct sge_rspq** ingr_map; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ sge; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  rspq_handler_t ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 int FW_CMD_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST ; 
 int FW_CMD_WRITE ; 
 int /*<<< orphan*/  FW_IQ_CMD ; 
 int FW_IQ_CMD_ALLOC ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FW_IQ_CMD_FL0PACKEN ; 
 int FW_IQ_CMD_FL0PADEN ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 
 int FW_IQ_CMD_IQGTSMODE ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_IQ_TYPE_FL_INT_CAP ; 
 int FUNC17 (struct fw_iq_cmd) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int STAT_LEN ; 
 void* FUNC18 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sge_fl*) ; 
 void* FUNC22 (int) ; 
 void* FUNC23 (int) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct fw_iq_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  napi_rx_handler ; 
 struct port_info* FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct adapter*,struct sge_fl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC31 (int,int) ; 
 int FUNC32 (struct adapter*,int /*<<< orphan*/ ,struct fw_iq_cmd*,int,struct fw_iq_cmd*) ; 

int FUNC33(struct adapter *adap, struct sge_rspq *iq, bool fwevtq,
		     struct net_device *dev, int intr_idx,
		     struct sge_fl *fl, rspq_handler_t hnd)
{
	int ret, flsz = 0;
	struct fw_iq_cmd c;
	struct port_info *pi = FUNC27(dev);

	/* Size needs to be multiple of 16, including status entry. */
	iq->size = FUNC31(iq->size, 16);

	iq->desc = FUNC18(adap->pdev_dev, iq->size, iq->iqe_len, 0,
			      &iq->phys_addr, NULL, 0);
	if (!iq->desc)
		return -ENOMEM;

	FUNC26(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC22(FUNC0(FW_IQ_CMD) | FW_CMD_REQUEST |
			    FW_CMD_WRITE | FW_CMD_EXEC |
			    FUNC13(adap->fn) | FUNC15(0));
	c.alloc_to_len16 = FUNC22(FW_IQ_CMD_ALLOC | FUNC12(1) |
				 FUNC17(c));
	c.type_to_iqandstindex = FUNC22(FUNC14(FW_IQ_TYPE_FL_INT_CAP) |
		FUNC8(fwevtq) | FUNC16(pi->viid) |
		FUNC5(intr_idx < 0) | FUNC7(1) |
		FUNC6(intr_idx >= 0 ? intr_idx :
							-intr_idx - 1));
	c.iqdroprss_to_iqesize = FUNC23(FUNC11(pi->tx_chan) |
		FW_IQ_CMD_IQGTSMODE |
		FUNC10(iq->pktcnt_idx) |
		FUNC9(FUNC24(iq->iqe_len) - 4));
	c.iqsize = FUNC23(iq->size);
	c.iqaddr = FUNC19(iq->phys_addr);

	if (fl) {
		fl->size = FUNC31(fl->size, 8);
		fl->desc = FUNC18(adap->pdev_dev, fl->size, sizeof(__be64),
				      sizeof(struct rx_sw_desc), &fl->addr,
				      &fl->sdesc, STAT_LEN);
		if (!fl->desc)
			goto fl_nomem;

		flsz = fl->size / 8 + STAT_LEN / sizeof(struct tx_desc);
		c.iqns_to_fl0congen = FUNC22(FW_IQ_CMD_FL0PACKEN |
					    FUNC4(1) |
					    FUNC1(1) |
					    FW_IQ_CMD_FL0PADEN);
		c.fl0dcaen_to_fl0cidxfthresh = FUNC23(FUNC3(2) |
				FUNC2(3));
		c.fl0size = FUNC23(flsz);
		c.fl0addr = FUNC19(fl->addr);
	}

	ret = FUNC32(adap, adap->fn, &c, sizeof(c), &c);
	if (ret)
		goto err;

	FUNC28(dev, &iq->napi, napi_rx_handler, 64);
	iq->cur_desc = iq->desc;
	iq->cidx = 0;
	iq->gen = 1;
	iq->next_intr_params = iq->intr_params;
	iq->cntxt_id = FUNC29(c.iqid);
	iq->abs_id = FUNC29(c.physiqid);
	iq->size--;                           /* subtract status entry */
	iq->adap = adap;
	iq->netdev = dev;
	iq->handler = hnd;

	/* set offset to -1 to distinguish ingress queues without FL */
	iq->offset = fl ? 0 : -1;

	adap->sge.ingr_map[iq->cntxt_id - adap->sge.ingr_start] = iq;

	if (fl) {
		fl->cntxt_id = FUNC29(c.fl0id);
		fl->avail = fl->pend_cred = 0;
		fl->pidx = fl->cidx = 0;
		fl->alloc_failed = fl->large_alloc_failed = fl->starving = 0;
		adap->sge.egr_map[fl->cntxt_id - adap->sge.egr_start] = fl;
		FUNC30(adap, fl, FUNC21(fl), GFP_KERNEL);
	}
	return 0;

fl_nomem:
	ret = -ENOMEM;
err:
	if (iq->desc) {
		FUNC20(adap->pdev_dev, iq->size * iq->iqe_len,
				  iq->desc, iq->phys_addr);
		iq->desc = NULL;
	}
	if (fl && fl->desc) {
		FUNC25(fl->sdesc);
		fl->sdesc = NULL;
		FUNC20(adap->pdev_dev, flsz * sizeof(struct tx_desc),
				  fl->desc, fl->addr);
		fl->desc = NULL;
	}
	return ret;
}