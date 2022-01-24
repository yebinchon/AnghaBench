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
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int state; int /*<<< orphan*/  lp; int /*<<< orphan*/  sid; int /*<<< orphan*/  did; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ESB_ST_ABNORMAL ; 
 int ESB_ST_COMPLETE ; 
 int ESB_ST_SEQ_INIT ; 
 int FC_EX_DONE ; 
 int FC_EX_RST_CLEANUP ; 
 int FC_FC_END_SEQ ; 
 int FC_FC_SEQ_INIT ; 
 int /*<<< orphan*/  FC_RCTL_BA_ABTS ; 
 int /*<<< orphan*/  FC_TYPE_BLS ; 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fc_seq*,struct fc_frame*) ; 
 struct fc_seq* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fc_exch *ep,
				unsigned int timer_msec)
{
	struct fc_seq *sp;
	struct fc_frame *fp;
	int error;

	if (ep->esb_stat & (ESB_ST_COMPLETE | ESB_ST_ABNORMAL) ||
	    ep->state & (FC_EX_DONE | FC_EX_RST_CLEANUP))
		return -ENXIO;

	/*
	 * Send the abort on a new sequence if possible.
	 */
	sp = FUNC4(&ep->seq);
	if (!sp)
		return -ENOMEM;

	ep->esb_stat |= ESB_ST_SEQ_INIT | ESB_ST_ABNORMAL;
	if (timer_msec)
		FUNC0(ep, timer_msec);

	/*
	 * If not logged into the fabric, don't send ABTS but leave
	 * sequence active until next timeout.
	 */
	if (!ep->sid)
		return 0;

	/*
	 * Send an abort for the sequence that timed out.
	 */
	fp = FUNC2(ep->lp, 0);
	if (fp) {
		FUNC1(fp, FC_RCTL_BA_ABTS, ep->did, ep->sid,
			       FC_TYPE_BLS, FC_FC_END_SEQ | FC_FC_SEQ_INIT, 0);
		error = FUNC3(ep->lp, sp, fp);
	} else
		error = -ENOBUFS;
	return error;
}