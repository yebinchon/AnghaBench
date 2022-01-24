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
struct mce_info {int restartable; int /*<<< orphan*/  paddr; int /*<<< orphan*/  t; int /*<<< orphan*/  inuse; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 size_t MCE_INFO_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current ; 
 struct mce_info* mce_info ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(__u64 addr, int c)
{
	struct mce_info *mi;

	for (mi = mce_info; mi < &mce_info[MCE_INFO_MAX]; mi++) {
		if (FUNC0(&mi->inuse, 0, 1) == 0) {
			mi->t = current;
			mi->paddr = addr;
			mi->restartable = c;
			return;
		}
	}

	FUNC1("Too many concurrent recoverable errors", NULL, NULL);
}