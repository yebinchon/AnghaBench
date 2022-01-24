#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  pd_block ; 
 int pd_buf ; 
 scalar_t__ pd_count ; 
 int /*<<< orphan*/  pd_lock ; 
 TYPE_1__* pd_req ; 
 int /*<<< orphan*/  pd_run ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long saved_flags;

	pd_count--;
	pd_run--;
	pd_buf += 512;
	pd_block++;
	if (!pd_run)
		return 1;
	if (pd_count)
		return 0;
	FUNC2(&pd_lock, saved_flags);
	FUNC0(pd_req, 0);
	pd_count = FUNC1(pd_req);
	pd_buf = pd_req->buffer;
	FUNC3(&pd_lock, saved_flags);
	return 0;
}