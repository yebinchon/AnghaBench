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
struct adb_request {int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct adb_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct adb_request*) ; 

__attribute__((used)) static int FUNC6(struct adb_request *req, int sync)
{
	int err;
	unsigned long flags;

	FUNC0(FUNC5(req));

	FUNC2(flags);
	err = FUNC4(req);
	FUNC1(flags);

	if (!err && sync) {
		while (!req->complete) {
			FUNC3();
		}
		FUNC0(FUNC5(req));
	}

	return err;
}