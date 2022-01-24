#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct fip_header {int fip_subcode; } ;
struct fcoe_rport {int dummy; } ;
struct fcoe_ctlr {int /*<<< orphan*/  ctlr_mutex; } ;
struct fc_rport_priv {int dummy; } ;
typedef  enum fip_vn2vn_subcode { ____Placeholder_fip_vn2vn_subcode } fip_vn2vn_subcode ;

/* Variables and functions */
#define  FIP_SC_VN_BEACON 132 
#define  FIP_SC_VN_CLAIM_NOTIFY 131 
#define  FIP_SC_VN_CLAIM_REP 130 
#define  FIP_SC_VN_PROBE_REP 129 
#define  FIP_SC_VN_PROBE_REQ 128 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*,struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*,struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*,struct fc_rport_priv*) ; 
 int FUNC4 (struct fcoe_ctlr*,struct sk_buff*,struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fcoe_ctlr*,struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct fcoe_ctlr*,struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
	struct fip_header *fiph;
	enum fip_vn2vn_subcode sub;
	struct {
		struct fc_rport_priv rdata;
		struct fcoe_rport frport;
	} buf;
	int rc;

	fiph = (struct fip_header *)skb->data;
	sub = fiph->fip_subcode;

	rc = FUNC4(fip, skb, &buf.rdata);
	if (rc) {
		FUNC0(fip, "vn_recv vn_parse error %d\n", rc);
		goto drop;
	}

	FUNC8(&fip->ctlr_mutex);
	switch (sub) {
	case FIP_SC_VN_PROBE_REQ:
		FUNC6(fip, &buf.rdata);
		break;
	case FIP_SC_VN_PROBE_REP:
		FUNC5(fip, &buf.rdata);
		break;
	case FIP_SC_VN_CLAIM_NOTIFY:
		FUNC2(fip, &buf.rdata);
		break;
	case FIP_SC_VN_CLAIM_REP:
		FUNC3(fip, &buf.rdata);
		break;
	case FIP_SC_VN_BEACON:
		FUNC1(fip, &buf.rdata);
		break;
	default:
		FUNC0(fip, "vn_recv unknown subcode %d\n", sub);
		rc = -1;
		break;
	}
	FUNC9(&fip->ctlr_mutex);
drop:
	FUNC7(skb);
	return rc;
}