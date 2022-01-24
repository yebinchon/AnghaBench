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
struct pool {int /*<<< orphan*/  pmd; int /*<<< orphan*/  pool_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  PM_FAIL ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pool*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pool *pool)
{
	const char *dev_name = FUNC2(pool->pool_md);

	FUNC1("%s: aborting current metadata transaction", dev_name);
	if (FUNC3(pool->pmd)) {
		FUNC0("%s: failed to abort metadata transaction", dev_name);
		FUNC5(pool, PM_FAIL);
	}

	if (FUNC4(pool->pmd)) {
		FUNC0("%s: failed to set 'needs_check' flag in metadata", dev_name);
		FUNC5(pool, PM_FAIL);
	}
}