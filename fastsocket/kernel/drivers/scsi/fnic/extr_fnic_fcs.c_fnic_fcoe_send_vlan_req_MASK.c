#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sk_buff {void* protocol; scalar_t__ data; } ;
struct fcoe_ctlr {int /*<<< orphan*/  (* send ) (struct fcoe_ctlr*,struct sk_buff*) ;TYPE_7__* lp; int /*<<< orphan*/  ctl_src_addr; } ;
struct fnic {int /*<<< orphan*/  fip_timer; TYPE_1__* lport; int /*<<< orphan*/  (* set_vlan ) (struct fnic*,int /*<<< orphan*/ ) ;struct fcoe_ctlr ctlr; } ;
struct TYPE_15__ {int fip_dlen; int /*<<< orphan*/  fip_dtype; } ;
struct TYPE_17__ {int /*<<< orphan*/  fd_wwn; TYPE_6__ fd_desc; } ;
struct TYPE_13__ {int fip_dlen; int /*<<< orphan*/  fip_dtype; } ;
struct TYPE_14__ {int /*<<< orphan*/  fd_mac; TYPE_4__ fd_desc; } ;
struct TYPE_18__ {TYPE_8__ wwnn; TYPE_5__ mac; } ;
struct TYPE_12__ {void* fip_dl_len; int /*<<< orphan*/  fip_subcode; void* fip_op; int /*<<< orphan*/  fip_ver; } ;
struct TYPE_11__ {void* h_proto; int /*<<< orphan*/ * h_dest; int /*<<< orphan*/ * h_source; } ;
struct fip_vlan {TYPE_9__ desc; TYPE_3__ fip; TYPE_2__ eth; } ;
struct TYPE_16__ {int /*<<< orphan*/  wwnn; } ;
struct TYPE_10__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int ETH_P_FIP ; 
 int /*<<< orphan*/  FCOE_CTLR_FIPVLAN_TOV ; 
 int FIP_BPW ; 
 int /*<<< orphan*/  FIP_DT_MAC ; 
 int /*<<< orphan*/  FIP_DT_NAME ; 
 int FIP_OP_VLAN ; 
 int /*<<< orphan*/  FIP_SC_VL_REQ ; 
 int /*<<< orphan*/  FIP_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  fcoe_all_fcfs ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*) ; 
 void* FUNC4 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fip_vlan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct fcoe_ctlr*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC16(struct fnic *fnic)
{
	struct fcoe_ctlr *fip = &fnic->ctlr;
	struct sk_buff *skb;
	char *eth_fr;
	int fr_len;
	struct fip_vlan *vlan;
	u64 vlan_tov;

	FUNC3(fnic);
	fnic->set_vlan(fnic, 0);
	FUNC1(KERN_INFO, fnic->lport->host,
		  "Sending VLAN request...\n");
	skb = FUNC2(sizeof(struct fip_vlan));
	if (!skb)
		return;

	fr_len = sizeof(*vlan);
	eth_fr = (char *)skb->data;
	vlan = (struct fip_vlan *)eth_fr;

	FUNC6(vlan, 0, sizeof(*vlan));
	FUNC5(vlan->eth.h_source, fip->ctl_src_addr, ETH_ALEN);
	FUNC5(vlan->eth.h_dest, fcoe_all_fcfs, ETH_ALEN);
	vlan->eth.h_proto = FUNC4(ETH_P_FIP);

	vlan->fip.fip_ver = FUNC0(FIP_VER);
	vlan->fip.fip_op = FUNC4(FIP_OP_VLAN);
	vlan->fip.fip_subcode = FIP_SC_VL_REQ;
	vlan->fip.fip_dl_len = FUNC4(sizeof(vlan->desc) / FIP_BPW);

	vlan->desc.mac.fd_desc.fip_dtype = FIP_DT_MAC;
	vlan->desc.mac.fd_desc.fip_dlen = sizeof(vlan->desc.mac) / FIP_BPW;
	FUNC5(&vlan->desc.mac.fd_mac, fip->ctl_src_addr, ETH_ALEN);

	vlan->desc.wwnn.fd_desc.fip_dtype = FIP_DT_NAME;
	vlan->desc.wwnn.fd_desc.fip_dlen = sizeof(vlan->desc.wwnn) / FIP_BPW;
	FUNC9(fip->lp->wwnn, &vlan->desc.wwnn.fd_wwn);

	FUNC11(skb, sizeof(*vlan));
	skb->protocol = FUNC4(ETH_P_FIP);
	FUNC12(skb);
	FUNC13(skb);
	fip->send(fip, skb);

	/* set a timer so that we can retry if there no response */
	vlan_tov = jiffies + FUNC8(FCOE_CTLR_FIPVLAN_TOV);
	FUNC7(&fnic->fip_timer, FUNC10(vlan_tov));
}