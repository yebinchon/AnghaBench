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
struct fc_exch {void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int esb_stat; int /*<<< orphan*/  ex_lock; struct fc_seq seq; void* arg; int /*<<< orphan*/  ex_refcnt; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int ESB_ST_REC_QUAL ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FC_EX_RST_CLEANUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch*) ; 
 int FUNC5 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct fc_exch *ep)
{
	struct fc_seq *sp;
	void (*resp)(struct fc_seq *, struct fc_frame *, void *);
	void *arg;
	int rc = 1;

	FUNC6(&ep->ex_lock);
	FUNC3(ep, 0);
	ep->state |= FC_EX_RST_CLEANUP;
	if (FUNC2(&ep->timeout_work))
		FUNC1(&ep->ex_refcnt);	/* drop hold for timer */
	resp = ep->resp;
	ep->resp = NULL;
	if (ep->esb_stat & ESB_ST_REC_QUAL)
		FUNC1(&ep->ex_refcnt);	/* drop hold for rec_qual */
	ep->esb_stat &= ~ESB_ST_REC_QUAL;
	arg = ep->arg;
	sp = &ep->seq;
	rc = FUNC5(ep);
	FUNC7(&ep->ex_lock);
	if (!rc)
		FUNC4(ep);

	if (resp)
		resp(sp, FUNC0(-FC_EX_CLOSED), arg);
}