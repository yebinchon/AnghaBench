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
typedef  int u32 ;
struct fc_lport {scalar_t__ state; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_type; int /*<<< orphan*/  fh_rx_id; int /*<<< orphan*/  fh_ox_id; int /*<<< orphan*/  fh_f_ctl; } ;
struct fc_frame {int dummy; } ;
struct fc_exch_mgr_anchor {int /*<<< orphan*/  mp; } ;

/* Variables and functions */
#define  FC_EOF_N 129 
#define  FC_EOF_T 128 
 int FC_FC_END_SEQ ; 
 int FC_FC_EX_CTX ; 
 scalar_t__ FUNC0 (int) ; 
 int FC_FC_SEQ_CTX ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,char*,...) ; 
 int /*<<< orphan*/  FC_TYPE_BLS ; 
 scalar_t__ LPORT_ST_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct fc_frame*) ; 
 struct fc_exch_mgr_anchor* FUNC6 (int,struct fc_lport*,struct fc_frame_header*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC8 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_frame*) ; 
 int FUNC10 (struct fc_frame*) ; 
 scalar_t__ FUNC11 (struct fc_frame*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC15(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_frame_header *fh = FUNC8(fp);
	struct fc_exch_mgr_anchor *ema;
	u32 f_ctl;

	/* lport lock ? */
	if (!lport || lport->state == LPORT_ST_DISABLED) {
		FUNC1(lport, "Receiving frames for an lport that "
			     "has not been initialized correctly\n");
		FUNC7(fp);
		return;
	}

	f_ctl = FUNC12(fh->fh_f_ctl);
	ema = FUNC6(f_ctl, lport, fh);
	if (!ema) {
		FUNC1(lport, "Unable to find Exchange Manager Anchor,"
				    "fc_ctl <0x%x>, xid <0x%x>\n",
				     f_ctl,
				     (f_ctl & FC_FC_EX_CTX) ?
				     FUNC13(fh->fh_ox_id) :
				     FUNC13(fh->fh_rx_id));
		FUNC7(fp);
		return;
	}

	/*
	 * If frame is marked invalid, just drop it.
	 */
	switch (FUNC10(fp)) {
	case FC_EOF_T:
		if (f_ctl & FC_FC_END_SEQ)
			FUNC14(FUNC9(fp), FUNC11(fp) - FUNC0(f_ctl));
		/* fall through */
	case FC_EOF_N:
		if (fh->fh_type == FC_TYPE_BLS)
			FUNC2(ema->mp, fp);
		else if ((f_ctl & (FC_FC_EX_CTX | FC_FC_SEQ_CTX)) ==
			 FC_FC_EX_CTX)
			FUNC5(ema->mp, fp);
		else if (f_ctl & FC_FC_SEQ_CTX)
			FUNC4(ema->mp, fp);
		else	/* no EX_CTX and no SEQ_CTX */
			FUNC3(lport, ema->mp, fp);
		break;
	default:
		FUNC1(lport, "dropping invalid frame (eof %x)",
			     FUNC10(fp));
		FUNC7(fp);
	}
}