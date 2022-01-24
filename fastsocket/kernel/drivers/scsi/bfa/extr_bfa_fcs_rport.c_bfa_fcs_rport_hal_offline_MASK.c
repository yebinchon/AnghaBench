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
struct bfa_fcs_rport_s {scalar_t__ bfa_rport; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_RPORT_SM_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bfa_fcs_rport_s *rport)
{
	if (rport->bfa_rport)
		FUNC1(rport->bfa_rport, BFA_RPORT_SM_OFFLINE);
	else
		FUNC0(rport);
}