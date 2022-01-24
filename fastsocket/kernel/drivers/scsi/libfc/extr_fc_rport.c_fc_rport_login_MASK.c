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
struct fc_rport_priv {int rp_state; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 int /*<<< orphan*/  FC_RP_STARTED ; 
#define  RPORT_ST_DELETE 129 
#define  RPORT_ST_READY 128 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fc_rport_priv *rdata)
{
	FUNC3(&rdata->rp_mutex);

	rdata->flags |= FC_RP_STARTED;
	switch (rdata->rp_state) {
	case RPORT_ST_READY:
		FUNC0(rdata, "ADISC port\n");
		FUNC1(rdata);
		break;
	case RPORT_ST_DELETE:
		FUNC0(rdata, "Restart deleted port\n");
		break;
	default:
		FUNC0(rdata, "Login to port\n");
		FUNC2(rdata);
		break;
	}
	FUNC4(&rdata->rp_mutex);

	return 0;
}