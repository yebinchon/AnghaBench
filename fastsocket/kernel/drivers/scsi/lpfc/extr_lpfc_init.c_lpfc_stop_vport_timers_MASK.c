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
struct lpfc_vport {int /*<<< orphan*/  delayed_disc_tmo; int /*<<< orphan*/  fc_fdmitmo; int /*<<< orphan*/  els_tmofunc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 

void
FUNC2(struct lpfc_vport *vport)
{
	FUNC0(&vport->els_tmofunc);
	FUNC0(&vport->fc_fdmitmo);
	FUNC0(&vport->delayed_disc_tmo);
	FUNC1(vport);
	return;
}