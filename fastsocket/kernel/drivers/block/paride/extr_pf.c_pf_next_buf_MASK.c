#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int buffer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  pf_block ; 
 int pf_buf ; 
 scalar_t__ pf_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pf_req ; 
 int /*<<< orphan*/  pf_run ; 
 int /*<<< orphan*/  pf_spin_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long saved_flags;

	pf_count--;
	pf_run--;
	pf_buf += 512;
	pf_block++;
	if (!pf_run)
		return 1;
	if (!pf_count) {
		FUNC2(&pf_spin_lock, saved_flags);
		FUNC1(0);
		FUNC3(&pf_spin_lock, saved_flags);
		if (!pf_req)
			return 1;
		pf_count = FUNC0(pf_req);
		pf_buf = pf_req->buffer;
	}
	return 0;
}