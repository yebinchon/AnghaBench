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
struct TYPE_2__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; scalar_t__ fh_type; int /*<<< orphan*/  fh_ox_id; } ;
struct fc_frame {int dummy; } ;
struct bnx2fc_rport {struct fc_rport_priv* rdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_rport*,char*,...) ; 
#define  ELS_ADISC 130 
#define  ELS_LOGO 129 
#define  ELS_RLS 128 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FC_RCTL_BA_ABTS ; 
 scalar_t__ FC_RCTL_ELS_REQ ; 
 scalar_t__ FC_TYPE_BLS ; 
 scalar_t__ FC_TYPE_ELS ; 
 int FUNC1 (struct bnx2fc_rport*,struct fc_frame*) ; 
 int FUNC2 (struct bnx2fc_rport*,struct fc_frame*) ; 
 int FUNC3 (struct bnx2fc_rport*,struct fc_frame*) ; 
 struct fc_frame_header* FUNC4 (struct fc_frame*) ; 
 int FUNC5 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct bnx2fc_rport *tgt,
			     struct fc_frame *fp)
{
	struct fc_rport_priv *rdata = tgt->rdata;
	struct fc_frame_header *fh;
	int rc = 0;

	fh = FUNC4(fp);
	FUNC0(tgt, "Xmit L2 frame rport = 0x%x, oxid = 0x%x, "
			"r_ctl = 0x%x\n", rdata->ids.port_id,
			FUNC6(fh->fh_ox_id), fh->fh_r_ctl);
	if ((fh->fh_type == FC_TYPE_ELS) &&
	    (fh->fh_r_ctl == FC_RCTL_ELS_REQ)) {

		switch (FUNC5(fp)) {
		case ELS_ADISC:
			rc = FUNC1(tgt, fp);
			break;
		case ELS_LOGO:
			rc = FUNC2(tgt, fp);
			break;
		case ELS_RLS:
			rc = FUNC3(tgt, fp);
			break;
		default:
			break;
		}
	} else if ((fh->fh_type ==  FC_TYPE_BLS) &&
	    (fh->fh_r_ctl == FC_RCTL_BA_ABTS))
		FUNC0(tgt, "ABTS frame\n");
	else {
		FUNC0(tgt, "Send L2 frame type 0x%x "
				"rctl 0x%x thru non-offload path\n",
				fh->fh_type, fh->fh_r_ctl);
		return -ENODEV;
	}
	if (rc)
		return -ENOMEM;
	else
		return 0;
}