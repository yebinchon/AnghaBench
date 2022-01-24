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
struct TYPE_3__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ PCD_RETRIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int pcd_bufblk ; 
 int /*<<< orphan*/  pcd_buffer ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* pcd_current ; 
 int /*<<< orphan*/  pcd_lock ; 
 int /*<<< orphan*/  pcd_queue ; 
 scalar_t__ pcd_retries ; 
 int /*<<< orphan*/  pcd_start ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned long saved_flags;

	if (FUNC4(pcd_current, pcd_buffer, "read block")) {
		if (pcd_retries < PCD_RETRIES) {
			FUNC2(1);
			pcd_retries++;
			FUNC5(pcd_current->pi, pcd_start);
			return;
		}
		pcd_bufblk = -1;
		FUNC3(-EIO);
		return;
	}

	FUNC0();
	FUNC6(&pcd_lock, saved_flags);
	FUNC1(pcd_queue);
	FUNC7(&pcd_lock, saved_flags);
}