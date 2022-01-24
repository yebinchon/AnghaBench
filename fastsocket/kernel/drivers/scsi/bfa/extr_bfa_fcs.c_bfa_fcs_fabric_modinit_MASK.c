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
struct bfa_fcs_s {int /*<<< orphan*/  fabric; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_FABRIC_SM_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_s*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfa_fcs_s *fcs)
{
	FUNC0(&fcs->fabric, BFA_FCS_FABRIC_SM_CREATE);
	FUNC1(fcs, 0);
}