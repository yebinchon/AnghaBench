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
 long EFAULT ; 
 long FUNC0 (void*,void*,size_t) ; 

long FUNC1(void *dst, void *src, size_t size)
{
	long copied = 0;

	while (size) {
		copied = FUNC0(dst, src, size);
		if (copied < 0)
			break;
		dst += copied;
		src += copied;
		size -= copied;
	}
	return copied < 0 ? -EFAULT : 0;
}