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
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long*,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  nonblocking_pool ; 

void FUNC4(void *buf, int nbytes)
{
	char *p = buf;

	while (nbytes) {
		unsigned long v;
		int chunk = FUNC3(nbytes, (int)sizeof(unsigned long));
		
		if (!FUNC0(&v))
			break;
		
		FUNC2(p, &v, chunk);
		p += chunk;
		nbytes -= chunk;
	}

	FUNC1(&nonblocking_pool, p, nbytes, 0, 0);
}