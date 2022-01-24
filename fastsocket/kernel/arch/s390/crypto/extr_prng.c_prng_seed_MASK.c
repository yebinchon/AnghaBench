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
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ parm_block ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(int nbytes)
{
	char buf[16];
	int i = 0;

	FUNC0(nbytes > 16);
	FUNC1(buf, nbytes);

	/* Add the entropy */
	while (nbytes >= 8) {
		*((__u64 *)parm_block) ^= *((__u64 *)(buf+i));
		FUNC2();
		i += 8;
		nbytes -= 8;
	}
	FUNC2();
}