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
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int* FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 

void FUNC2(unsigned long port, void *addr, unsigned long count)
{
	volatile __u16 *p = FUNC0(port);
	__u8 *ap = addr;

	if (FUNC1(port)) {
		while (count--)
			*ap++ = *p >> 8;
	} else {
		while (count--)
			*ap++ = *p;
	}
}