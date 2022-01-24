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
struct TYPE_2__ {int /*<<< orphan*/  hb_count; } ;
struct bfa_ioc_s {int /*<<< orphan*/  hb_count; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOC_E_HWERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_hbfails ; 

void
FUNC2(struct bfa_ioc_s *ioc)
{
	FUNC1(ioc, ioc_hbfails);
	ioc->stats.hb_count = ioc->hb_count;
	FUNC0(ioc, IOC_E_HWERROR);
}