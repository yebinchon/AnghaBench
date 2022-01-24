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
typedef  int /*<<< orphan*/  u8 ;
struct fcoe_ctlr {int dummy; } ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {struct fc_lport* lp; } ;
struct TYPE_2__ {int /*<<< orphan*/ * granted_mac; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_seq*,struct fc_frame*,struct fc_lport*) ; 
 struct fc_exch* FUNC2 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*,struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct fc_frame*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
	struct fcoe_ctlr *fip = arg;
	struct fc_exch *exch = FUNC2(seq);
	struct fc_lport *lport = exch->lp;
	u8 *mac;

	if (FUNC0(fp))
		goto done;

	mac = FUNC5(fp)->granted_mac;
	/* pre-FIP */
	if (FUNC6(mac))
		FUNC3(fip, lport, fp);
	if (!FUNC6(mac))
		FUNC4(lport, mac);
done:
	FUNC1(seq, fp, lport);
}