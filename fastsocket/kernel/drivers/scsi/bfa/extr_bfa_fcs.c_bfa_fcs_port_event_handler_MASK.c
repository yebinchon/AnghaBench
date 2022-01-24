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
typedef  enum bfa_port_linkstate { ____Placeholder_bfa_port_linkstate } bfa_port_linkstate ;

/* Variables and functions */
#define  BFA_PORT_LINKDOWN 129 
#define  BFA_PORT_LINKUP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_s*,int) ; 

__attribute__((used)) static void
FUNC4(void *cbarg, enum bfa_port_linkstate event)
{
	struct bfa_fcs_s      *fcs = cbarg;

	FUNC3(fcs, event);

	switch (event) {
	case BFA_PORT_LINKUP:
		FUNC2(&fcs->fabric);
		break;

	case BFA_PORT_LINKDOWN:
		FUNC1(&fcs->fabric);
		break;

	default:
		FUNC0(1);
	}
}