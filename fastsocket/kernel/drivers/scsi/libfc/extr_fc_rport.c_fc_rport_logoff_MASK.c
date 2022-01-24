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
struct fc_rport_priv {scalar_t__ rp_state; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 int /*<<< orphan*/  FC_RP_STARTED ; 
 int /*<<< orphan*/  RPORT_EV_STOP ; 
 scalar_t__ RPORT_ST_DELETE ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fc_rport_priv *rdata)
{
	FUNC3(&rdata->rp_mutex);

	FUNC0(rdata, "Remove port\n");

	rdata->flags &= ~FC_RP_STARTED;
	if (rdata->rp_state == RPORT_ST_DELETE) {
		FUNC0(rdata, "Port in Delete state, not removing\n");
		goto out;
	}
	FUNC2(rdata);

	/*
	 * Change the state to Delete so that we discard
	 * the response.
	 */
	FUNC1(rdata, RPORT_EV_STOP);
out:
	FUNC4(&rdata->rp_mutex);
	return 0;
}