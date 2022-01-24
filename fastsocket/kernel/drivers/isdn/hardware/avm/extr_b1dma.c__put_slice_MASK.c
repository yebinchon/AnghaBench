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
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(void **pp, unsigned char *dp, unsigned int len)
{
	unsigned i = len;
	FUNC1(pp, i);
	while (i-- > 0)
		FUNC0(pp, *dp++);
}