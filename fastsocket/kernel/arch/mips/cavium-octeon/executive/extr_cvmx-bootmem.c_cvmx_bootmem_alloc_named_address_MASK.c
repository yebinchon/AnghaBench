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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ; 

void *FUNC1(uint64_t size, uint64_t address,
				       char *name)
{
    return FUNC0(size, address, address + size,
					  0, name);
}