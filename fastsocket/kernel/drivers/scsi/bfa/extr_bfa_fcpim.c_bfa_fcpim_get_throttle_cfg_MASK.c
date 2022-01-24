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
typedef  int /*<<< orphan*/  u16 ;
struct bfa_s {int dummy; } ;
struct bfa_fcp_mod_s {int /*<<< orphan*/  num_ioim_reqs; int /*<<< orphan*/  throttle_update_required; } ;

/* Variables and functions */
 struct bfa_fcp_mod_s* FUNC0 (struct bfa_s*) ; 
 scalar_t__ FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*) ; 

u16
FUNC3(struct bfa_s *bfa, u16 drv_cfg_param)
{
	u16 tmp;
	struct bfa_fcp_mod_s *fcp = FUNC0(bfa);

	/*
	 * If throttle value from flash is already in effect after driver is
	 * loaded then until next load, always return current value instead
	 * of actual flash value
	 */
	if (!fcp->throttle_update_required)
		return (u16)fcp->num_ioim_reqs;

	tmp = FUNC1(bfa) ? FUNC2(bfa) : 0;
	if (!tmp || (tmp > drv_cfg_param))
		tmp = drv_cfg_param;

	return tmp;
}