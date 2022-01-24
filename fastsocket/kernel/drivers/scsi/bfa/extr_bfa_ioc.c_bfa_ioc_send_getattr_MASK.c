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
struct bfi_ioc_getattr_req_s {int /*<<< orphan*/  attr_addr; int /*<<< orphan*/  mh; } ;
struct TYPE_2__ {int /*<<< orphan*/  pa; } ;
struct bfa_ioc_s {TYPE_1__ attr_dma; } ;
typedef  int /*<<< orphan*/  attr_req ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_H2I_GETATTR_REQ ; 
 int /*<<< orphan*/  BFI_MC_IOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,struct bfi_ioc_getattr_req_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc_s *ioc)
{
	struct bfi_ioc_getattr_req_s	attr_req;

	FUNC3(attr_req.mh, BFI_MC_IOC, BFI_IOC_H2I_GETATTR_REQ,
		    FUNC2(ioc));
	FUNC0(attr_req.attr_addr, ioc->attr_dma.pa);
	FUNC1(ioc, &attr_req, sizeof(attr_req));
}