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
struct bfa_iocpf_s {scalar_t__ fw_mismatch_notified; int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 scalar_t__ BFA_FALSE ; 
 scalar_t__ BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bfa_iocpf_s *iocpf)
{
	/*
	 * Call only the first time sm enters fwmismatch state.
	 */
	if (iocpf->fw_mismatch_notified == BFA_FALSE)
		FUNC0(iocpf->ioc);

	iocpf->fw_mismatch_notified = BFA_TRUE;
	FUNC1(iocpf->ioc);
}