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
struct sg_mapping_iter {scalar_t__ consumed; scalar_t__ addr; scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (scalar_t__,size_t) ; 
 scalar_t__ FUNC3 (struct sg_mapping_iter*) ; 

__attribute__((used)) static uint32_t FUNC4(struct sg_mapping_iter *miter)
{
	size_t len, left = 4;
	uint32_t data;
	void *addr = &data;

	do {
		len = FUNC2(miter->length - miter->consumed, left);
		FUNC0(addr, miter->addr + miter->consumed, len);
		miter->consumed += len;
		left -= len;
		if (!left)
			return data;
		addr += len;
	} while (FUNC3(miter));

	FUNC1(addr, 0, left);
	return data;
}