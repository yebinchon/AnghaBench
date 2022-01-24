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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int jiffies ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *instance, int reg, int bit, int val, int t)
{
	FUNC0();
	int n = 500;		/* At about 8uS a cycle for the cpu access */
	unsigned long end = jiffies + t;
	int r;
	
	FUNC2(instance);

	while( n-- > 0)
	{
		r = FUNC1(reg);
		if((r & bit) == val)
			return 0;
		FUNC4();
	}
	
	/* t time yet ? */
	while(FUNC6(jiffies, end))
	{
		r = FUNC1(reg);
		if((r & bit) == val)
			return 0;
		if(!FUNC5())
			FUNC3();
		else
			FUNC4();
	}
	return -ETIMEDOUT;
}