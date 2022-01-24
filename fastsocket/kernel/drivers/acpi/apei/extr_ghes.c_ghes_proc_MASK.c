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
struct ghes {int /*<<< orphan*/  estatus; int /*<<< orphan*/  generic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ghes*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ghes*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ghes *ghes)
{
	int rc;

	rc = FUNC5(ghes, 0);
	if (rc)
		goto out;
	if (!FUNC3(ghes->estatus)) {
		if (FUNC4(NULL, ghes->generic, ghes->estatus))
			FUNC2(ghes->generic, ghes->estatus);
	}
	FUNC1(ghes->estatus);
out:
	FUNC0(ghes);
	return 0;
}