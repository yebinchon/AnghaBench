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
typedef  int /*<<< orphan*/  uint32_t ;
struct sg_mapping_iter {scalar_t__ consumed; int /*<<< orphan*/  addr; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 size_t FUNC1 (scalar_t__,size_t) ; 
 scalar_t__ FUNC2 (struct sg_mapping_iter*) ; 

__attribute__((used)) static void FUNC3(struct sg_mapping_iter *miter, uint32_t data)
{
	size_t len, left = 4;
	void *addr = &data;

	do {
		len = FUNC1(miter->length - miter->consumed, left);
		FUNC0(miter->addr, addr, len);
		miter->consumed += len;
		left -= len;
		if (!left)
			return;
		addr += len;
	} while (FUNC2(miter));
}