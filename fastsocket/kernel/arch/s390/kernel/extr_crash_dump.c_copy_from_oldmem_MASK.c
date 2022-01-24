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
 int OLDMEM_BASE ; 
 unsigned long OLDMEM_SIZE ; 
 int FUNC0 (void*,void*,size_t) ; 
 unsigned long FUNC1 (size_t,unsigned long) ; 

__attribute__((used)) static int FUNC2(void *dest, void *src, size_t count)
{
	unsigned long copied = 0;
	int rc;

	if ((unsigned long) src < OLDMEM_SIZE) {
		copied = FUNC1(count, OLDMEM_SIZE - (unsigned long) src);
		rc = FUNC0(dest, src + OLDMEM_BASE, copied);
		if (rc)
			return rc;
	}
	return FUNC0(dest + copied, src + copied, count - copied);
}