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
struct fc_seq {int dummy; } ;
struct fc_lport {int state; int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  fdmi_enabled; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {scalar_t__ ct_fs_type; scalar_t__ ct_fs_subtype; int /*<<< orphan*/  ct_cmd; } ;

/* Variables and functions */
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 scalar_t__ FC_FST_DIR ; 
 scalar_t__ FC_FS_ACC ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FC_NS_SUBTYPE ; 
 scalar_t__ FC_TYPE_CT ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
#define  LPORT_ST_RFF_ID 132 
#define  LPORT_ST_RFT_ID 131 
#define  LPORT_ST_RNN_ID 130 
#define  LPORT_ST_RSNN_NN 129 
#define  LPORT_ST_RSPN_ID 128 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC5 (struct fc_frame*) ; 
 struct fc_ct_hdr* FUNC6 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct fc_seq *sp, struct fc_frame *fp,
			     void *lp_arg)
{
	struct fc_lport *lport = lp_arg;
	struct fc_frame_header *fh;
	struct fc_ct_hdr *ct;

	FUNC1(lport, "Received a ns %s\n", FUNC3(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		return;

	FUNC12(&lport->lp_mutex);

	if (lport->state < LPORT_ST_RNN_ID || lport->state > LPORT_ST_RFF_ID) {
		FUNC1(lport, "Received a name server response, "
			     "but in state %s\n", FUNC11(lport));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC10(lport, fp);
		goto err;
	}

	fh = FUNC5(fp);
	ct = FUNC6(fp, sizeof(*ct));

	if (fh && ct && fh->fh_type == FC_TYPE_CT &&
	    ct->ct_fs_type == FC_FST_DIR &&
	    ct->ct_fs_subtype == FC_NS_SUBTYPE &&
	    FUNC14(ct->ct_cmd) == FC_FS_ACC)
		switch (lport->state) {
		case LPORT_ST_RNN_ID:
			FUNC8(lport, LPORT_ST_RSNN_NN);
			break;
		case LPORT_ST_RSNN_NN:
			FUNC8(lport, LPORT_ST_RSPN_ID);
			break;
		case LPORT_ST_RSPN_ID:
			FUNC8(lport, LPORT_ST_RFT_ID);
			break;
		case LPORT_ST_RFT_ID:
			FUNC8(lport, LPORT_ST_RFF_ID);
			break;
		case LPORT_ST_RFF_ID:
			if (lport->fdmi_enabled)
				FUNC7(lport);
			else
				FUNC9(lport);
			break;
		default:
			/* should have already been caught by state checks */
			break;
		}
	else
		FUNC10(lport, fp);
out:
	FUNC4(fp);
err:
	FUNC13(&lport->lp_mutex);
}