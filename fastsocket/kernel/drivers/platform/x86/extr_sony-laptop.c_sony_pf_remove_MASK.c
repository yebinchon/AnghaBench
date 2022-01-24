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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sony_pf_device ; 
 int /*<<< orphan*/  sony_pf_driver ; 
 int /*<<< orphan*/  sony_pf_users ; 

__attribute__((used)) static void FUNC4(void)
{
	/* deregister only after the last user has gone */
	if (!FUNC0(&sony_pf_users))
		return;

	FUNC1(sony_pf_device);
	FUNC2(sony_pf_device);
	FUNC3(&sony_pf_driver);
}