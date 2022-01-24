#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fc_seq {int dummy; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {TYPE_2__* lp; int /*<<< orphan*/  recov_retry; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* exch_done ) (struct fc_seq*) ;} ;
struct TYPE_4__ {TYPE_1__ tt; } ;

/* Variables and functions */
#define  ELS_LS_ACC 129 
#define  ELS_LS_RJT 128 
 int /*<<< orphan*/  FC_ERROR ; 
 scalar_t__ FC_TYPE_BLS ; 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 scalar_t__ FUNC1 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC7 (struct fc_frame*) ; 
 int FUNC8 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_seq*) ; 

__attribute__((used)) static void FUNC11(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
	struct fc_fcp_pkt *fsp = arg;
	struct fc_frame_header *fh;

	if (FUNC0(fp)) {
		FUNC3(fsp, fp);
		return;
	}

	if (FUNC1(fsp))
		goto out;

	fh = FUNC7(fp);
	/*
	 * BUG? fc_fcp_srr_error calls exch_done which would release
	 * the ep. But if fc_fcp_srr_error had got -FC_EX_TIMEOUT,
	 * then fc_exch_timeout would be sending an abort. The exch_done
	 * call by fc_fcp_srr_error would prevent fc_exch.c from seeing
	 * an abort response though.
	 */
	if (fh->fh_type == FC_TYPE_BLS) {
		FUNC5(fsp);
		return;
	}

	switch (FUNC8(fp)) {
	case ELS_LS_ACC:
		fsp->recov_retry = 0;
		FUNC4(fsp, FUNC9(fsp));
		break;
	case ELS_LS_RJT:
	default:
		FUNC2(fsp, FC_ERROR);
		break;
	}
	FUNC5(fsp);
out:
	fsp->lp->tt.exch_done(seq);
	FUNC6(fp);
}