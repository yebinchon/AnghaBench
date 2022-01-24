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
typedef  scalar_t__ u8 ;
struct fc_seq {int dummy; } ;
struct fc_lport {scalar_t__ state; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 scalar_t__ LPORT_ST_SCR ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 scalar_t__ FUNC5 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct fc_seq *sp, struct fc_frame *fp,
			      void *lp_arg)
{
	struct fc_lport *lport = lp_arg;
	u8 op;

	FUNC1(lport, "Received a SCR %s\n", FUNC3(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		return;

	FUNC9(&lport->lp_mutex);

	if (lport->state != LPORT_ST_SCR) {
		FUNC1(lport, "Received a SCR response, but in state "
			     "%s\n", FUNC8(lport));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC7(lport, fp);
		goto err;
	}

	op = FUNC5(fp);
	if (op == ELS_LS_ACC)
		FUNC6(lport);
	else
		FUNC7(lport, fp);

out:
	FUNC4(fp);
err:
	FUNC10(&lport->lp_mutex);
}