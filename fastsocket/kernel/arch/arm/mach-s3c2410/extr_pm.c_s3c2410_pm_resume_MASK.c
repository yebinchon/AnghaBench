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
struct sys_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C2410_GSTATUS2 ; 
 unsigned long S3C2410_GSTATUS2_OFFRESET ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sys_device *dev)
{
	unsigned long tmp;

	/* unset the return-from-sleep flag, to ensure reset */

	tmp = FUNC1(S3C2410_GSTATUS2);
	tmp &= S3C2410_GSTATUS2_OFFRESET;
	FUNC2(tmp, S3C2410_GSTATUS2);

	if ( FUNC3() )
		FUNC4(FUNC0(2), 0);

	return 0;
}