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
typedef  void* wwn_t ;
struct bfad_s {int dummy; } ;
struct bfa_fcs_fabric_s {scalar_t__ fabric_name; int /*<<< orphan*/  bport; TYPE_1__* fcs; } ;
struct TYPE_2__ {scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  BFA_PORT_AEN_FABRIC_NAME_CHANGE ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct bfa_fcs_fabric_s *fabric,
			       wwn_t fabric_name)
{
	struct bfad_s *bfad = (struct bfad_s *)fabric->fcs->bfad;
	char	pwwn_ptr[BFA_STRING_32];
	char	fwwn_ptr[BFA_STRING_32];

	FUNC4(fabric->fcs, fabric_name);

	if (fabric->fabric_name == 0) {
		/*
		 * With BRCD switches, we don't get Fabric Name in FLOGI.
		 * Don't generate a fabric name change event in this case.
		 */
		fabric->fabric_name = fabric_name;
	} else {
		fabric->fabric_name = fabric_name;
		FUNC5(pwwn_ptr, FUNC3(&fabric->bport));
		FUNC5(fwwn_ptr,
			FUNC2(&fabric->bport));
		FUNC0(KERN_WARNING, bfad, bfa_log_level,
			"Base port WWN = %s Fabric WWN = %s\n",
			pwwn_ptr, fwwn_ptr);
		FUNC1(&fabric->bport,
				BFA_PORT_AEN_FABRIC_NAME_CHANGE);
	}
}