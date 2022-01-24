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
struct niu {int dummy; } ;

/* Variables and functions */
 unsigned long CLASS_CODE_ETHERTYPE1 ; 
 unsigned long CLASS_CODE_ETHERTYPE2 ; 
 unsigned long CLASS_CODE_USER_PROG1 ; 
 unsigned long CLASS_CODE_USER_PROG4 ; 
 int /*<<< orphan*/  DEFAULT_TCAM_ACCESS_RATIO ; 
 int /*<<< orphan*/  DEFAULT_TCAM_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct niu*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct niu*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct niu *np)
{
	unsigned long i;
	int err;

	FUNC0(np, 0);
	FUNC1(np,
			       DEFAULT_TCAM_LATENCY,
			       DEFAULT_TCAM_ACCESS_RATIO);
	for (i = CLASS_CODE_ETHERTYPE1; i <= CLASS_CODE_ETHERTYPE2; i++) {
		err = FUNC2(np, i, 0);
		if (err)
			return err;
	}
	for (i = CLASS_CODE_USER_PROG1; i <= CLASS_CODE_USER_PROG4; i++) {
		err = FUNC3(np, i, 0);
		if (err)
			return err;
	}

	return 0;
}