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
struct fc_frame_header {scalar_t__ ct_explan; int /*<<< orphan*/  ct_cmd; int /*<<< orphan*/  ct_reason; int /*<<< orphan*/  fh_seq_cnt; } ;
struct fc_frame {int dummy; } ;
struct fc_disc {unsigned int seq_count; int /*<<< orphan*/  disc_mutex; } ;
struct fc_ct_hdr {scalar_t__ ct_explan; int /*<<< orphan*/  ct_cmd; int /*<<< orphan*/  ct_reason; int /*<<< orphan*/  fh_seq_cnt; } ;
typedef  enum fc_disc_event { ____Placeholder_fc_disc_event } fc_disc_event ;

/* Variables and functions */
 int DISC_EV_FAILED ; 
 int DISC_EV_NONE ; 
 int DISC_EV_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct fc_disc*,char*,...) ; 
 unsigned int FC_FS_ACC ; 
 scalar_t__ FC_FS_EXP_FTNR ; 
 unsigned int FC_FS_RJT ; 
 int /*<<< orphan*/  FC_FS_RJT_UNABL ; 
 scalar_t__ FC_SOF_I3 ; 
 scalar_t__ FC_SOF_N3 ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_disc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_disc*,struct fc_frame*) ; 
 int FUNC5 (struct fc_disc*,struct fc_frame_header*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC7 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC9 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_frame*) ; 
 int FUNC11 (struct fc_frame*) ; 
 scalar_t__ FUNC12 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct fc_seq *sp, struct fc_frame *fp,
				void *disc_arg)
{
	struct fc_disc *disc = disc_arg;
	struct fc_ct_hdr *cp;
	struct fc_frame_header *fh;
	enum fc_disc_event event = DISC_EV_NONE;
	unsigned int seq_cnt;
	unsigned int len;
	int error = 0;

	FUNC13(&disc->disc_mutex);
	FUNC0(disc, "Received a GPN_FT response\n");

	if (FUNC1(fp)) {
		FUNC4(disc, fp);
		FUNC14(&disc->disc_mutex);
		return;
	}

	FUNC2(!FUNC8(fp));	/* buffer must be contiguous */
	fh = FUNC7(fp);
	len = FUNC11(fp) - sizeof(*fh);
	seq_cnt = FUNC15(fh->fh_seq_cnt);
	if (FUNC12(fp) == FC_SOF_I3 && seq_cnt == 0 && disc->seq_count == 0) {
		cp = FUNC9(fp, sizeof(*cp));
		if (!cp) {
			FUNC0(disc, "GPN_FT response too short, len %d\n",
				    FUNC11(fp));
			event = DISC_EV_FAILED;
		} else if (FUNC15(cp->ct_cmd) == FC_FS_ACC) {

			/* Accepted, parse the response. */
			len -= sizeof(*cp);
			error = FUNC5(disc, cp + 1, len);
		} else if (FUNC15(cp->ct_cmd) == FC_FS_RJT) {
			FUNC0(disc, "GPN_FT rejected reason %x exp %x "
				    "(check zoning)\n", cp->ct_reason,
				    cp->ct_explan);
			event = DISC_EV_FAILED;
			if (cp->ct_reason == FC_FS_RJT_UNABL &&
			    cp->ct_explan == FC_FS_EXP_FTNR)
				event = DISC_EV_SUCCESS;
		} else {
			FUNC0(disc, "GPN_FT unexpected response code "
				    "%x\n", FUNC15(cp->ct_cmd));
			event = DISC_EV_FAILED;
		}
	} else if (FUNC12(fp) == FC_SOF_N3 && seq_cnt == disc->seq_count) {
		error = FUNC5(disc, fh + 1, len);
	} else {
		FUNC0(disc, "GPN_FT unexpected frame - out of sequence? "
			    "seq_cnt %x expected %x sof %x eof %x\n",
			    seq_cnt, disc->seq_count, FUNC12(fp), FUNC10(fp));
		event = DISC_EV_FAILED;
	}
	if (error)
		FUNC4(disc, fp);
	else if (event != DISC_EV_NONE)
		FUNC3(disc, event);
	FUNC6(fp);
	FUNC14(&disc->disc_mutex);
}