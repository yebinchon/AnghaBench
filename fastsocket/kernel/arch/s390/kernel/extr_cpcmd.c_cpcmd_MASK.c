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
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int FUNC0 (char const*,char*,int,int*) ; 
 int /*<<< orphan*/  cpcmd_lock ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (char*) ; 

int FUNC8(const char *cmd, char *response, int rlen, int *response_code)
{
	char *lowbuf;
	int len;
	unsigned long flags;

	if ((FUNC7(response) != (unsigned long) response) ||
			(((unsigned long)response + rlen) >> 31)) {
		lowbuf = FUNC2(rlen, GFP_KERNEL | GFP_DMA);
		if (!lowbuf) {
			FUNC4("The cpcmd kernel function failed to "
				   "allocate a response buffer\n");
			return -ENOMEM;
		}
		FUNC5(&cpcmd_lock, flags);
		len = FUNC0(cmd, lowbuf, rlen, response_code);
		FUNC6(&cpcmd_lock, flags);
		FUNC3(response, lowbuf, rlen);
		FUNC1(lowbuf);
	} else {
		FUNC5(&cpcmd_lock, flags);
		len = FUNC0(cmd, response, rlen, response_code);
		FUNC6(&cpcmd_lock, flags);
	}
	return len;
}