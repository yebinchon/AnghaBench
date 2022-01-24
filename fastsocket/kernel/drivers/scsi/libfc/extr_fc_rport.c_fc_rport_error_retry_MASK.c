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
struct fc_rport_priv {scalar_t__ retries; int /*<<< orphan*/  retry_work; TYPE_1__* local_port; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_rport_retry_count; } ;

/* Variables and functions */
 unsigned long FC_DEF_E_D_TOV ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FC_EX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct fc_rport_priv *rdata,
				 struct fc_frame *fp)
{
	unsigned long delay = FC_DEF_E_D_TOV;

	/* make sure this isn't an FC_EX_CLOSED error, never retry those */
	if (FUNC1(fp) == -FC_EX_CLOSED)
		goto out;

	if (rdata->retries < rdata->local_port->max_rport_retry_count) {
		FUNC0(rdata, "Error %ld in state %s, retrying\n",
			     FUNC1(fp), FUNC3(rdata));
		rdata->retries++;
		/* no additional delay on exchange timeouts */
		if (FUNC1(fp) == -FC_EX_TIMEOUT)
			delay = 0;
		FUNC4(&rdata->retry_work, delay);
		return;
	}

out:
	FUNC2(rdata, fp);
}