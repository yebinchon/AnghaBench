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
struct bfi_ioc_ctrl_req {int /*<<< orphan*/  mh; } ;
struct bfa_ioc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_H2I_DISABLE_REQ ; 
 int /*<<< orphan*/  BFI_MC_IOC ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,struct bfi_ioc_ctrl_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_ioc *ioc)
{
	struct bfi_ioc_ctrl_req disable_req;

	FUNC2(disable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_DISABLE_REQ,
		    FUNC1(ioc));
	FUNC0(ioc, &disable_req, sizeof(struct bfi_ioc_ctrl_req));
}