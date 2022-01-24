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
struct bfad_s {int dummy; } ;
struct bfa_ioc_s {int /*<<< orphan*/  iocpf; TYPE_1__* bfa; } ;
struct TYPE_2__ {scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_AEN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IOCPF_E_DISABLE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_log_level ; 

__attribute__((used)) static void
FUNC3(struct bfa_ioc_s *ioc)
{
	struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;
	FUNC1(&ioc->iocpf, IOCPF_E_DISABLE);
	FUNC0(KERN_INFO, bfad, bfa_log_level, "IOC disabled\n");
	FUNC2(ioc, BFA_IOC_AEN_DISABLE);
}