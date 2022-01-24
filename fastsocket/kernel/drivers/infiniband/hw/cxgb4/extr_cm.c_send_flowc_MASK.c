#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct fw_flowc_wr {TYPE_3__* mnemval; void* flowid_len16; void* op_to_nparams; } ;
struct TYPE_11__ {TYPE_4__* dev; } ;
struct c4iw_ep {int tx_chan; int rss_qid; int snd_seq; int rcv_seq; int emss; TYPE_5__ com; int /*<<< orphan*/  txq_idx; int /*<<< orphan*/  hwtid; } ;
struct TYPE_8__ {TYPE_1__* pdev; } ;
struct TYPE_12__ {TYPE_2__ lldi; } ;
struct TYPE_10__ {TYPE_6__ rdev; } ;
struct TYPE_9__ {scalar_t__* r4; void* val; scalar_t__ mnemonic; } ;
struct TYPE_7__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 scalar_t__ FW_FLOWC_MNEM_CH ; 
 scalar_t__ FW_FLOWC_MNEM_IQID ; 
 scalar_t__ FW_FLOWC_MNEM_MSS ; 
 scalar_t__ FW_FLOWC_MNEM_PFNVFN ; 
 scalar_t__ FW_FLOWC_MNEM_PORT ; 
 scalar_t__ FW_FLOWC_MNEM_RCVNXT ; 
 scalar_t__ FW_FLOWC_MNEM_SNDBUF ; 
 scalar_t__ FW_FLOWC_MNEM_SNDNXT ; 
 int /*<<< orphan*/  FW_FLOWC_WR ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,struct sk_buff*) ; 
 void* FUNC8 (int) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int snd_win ; 

__attribute__((used)) static void FUNC11(struct c4iw_ep *ep, struct sk_buff *skb)
{
	unsigned int flowclen = 80;
	struct fw_flowc_wr *flowc;
	int i;

	skb = FUNC9(skb, flowclen, GFP_KERNEL);
	flowc = (struct fw_flowc_wr *)FUNC6(skb, flowclen);

	flowc->op_to_nparams = FUNC8(FUNC4(FW_FLOWC_WR) |
					   FUNC1(8));
	flowc->flowid_len16 = FUNC8(FUNC3(FUNC0(flowclen,
					  16)) | FUNC2(ep->hwtid));

	flowc->mnemval[0].mnemonic = FW_FLOWC_MNEM_PFNVFN;
	flowc->mnemval[0].val = FUNC8(
		FUNC5(ep->com.dev->rdev.lldi.pdev->devfn) << 8);
	flowc->mnemval[1].mnemonic = FW_FLOWC_MNEM_CH;
	flowc->mnemval[1].val = FUNC8(ep->tx_chan);
	flowc->mnemval[2].mnemonic = FW_FLOWC_MNEM_PORT;
	flowc->mnemval[2].val = FUNC8(ep->tx_chan);
	flowc->mnemval[3].mnemonic = FW_FLOWC_MNEM_IQID;
	flowc->mnemval[3].val = FUNC8(ep->rss_qid);
	flowc->mnemval[4].mnemonic = FW_FLOWC_MNEM_SNDNXT;
	flowc->mnemval[4].val = FUNC8(ep->snd_seq);
	flowc->mnemval[5].mnemonic = FW_FLOWC_MNEM_RCVNXT;
	flowc->mnemval[5].val = FUNC8(ep->rcv_seq);
	flowc->mnemval[6].mnemonic = FW_FLOWC_MNEM_SNDBUF;
	flowc->mnemval[6].val = FUNC8(snd_win);
	flowc->mnemval[7].mnemonic = FW_FLOWC_MNEM_MSS;
	flowc->mnemval[7].val = FUNC8(ep->emss);
	/* Pad WR to 16 byte boundary */
	flowc->mnemval[8].mnemonic = 0;
	flowc->mnemval[8].val = 0;
	for (i = 0; i < 9; i++) {
		flowc->mnemval[i].r4[0] = 0;
		flowc->mnemval[i].r4[1] = 0;
		flowc->mnemval[i].r4[2] = 0;
	}

	FUNC10(skb, CPL_PRIORITY_DATA, ep->txq_idx);
	FUNC7(&ep->com.dev->rdev, skb);
}