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
struct fcoe_ctlr {int /*<<< orphan*/  ctlr_mutex; } ;
struct TYPE_2__ {struct fcoe_ctlr* priv; } ;
struct fc_lport {TYPE_1__ disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fc_lport *lport)
{
	struct fcoe_ctlr *fip = lport->disc.priv;

	FUNC1(&fip->ctlr_mutex);
	FUNC0(lport);
	FUNC2(&fip->ctlr_mutex);
}