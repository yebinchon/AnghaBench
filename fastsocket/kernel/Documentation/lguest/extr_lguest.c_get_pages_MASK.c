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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void* FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 () ; 
 scalar_t__ guest_limit ; 
 scalar_t__ guest_max ; 

__attribute__((used)) static void *FUNC3(unsigned int num)
{
	void *addr = FUNC1(guest_limit);

	guest_limit += num * FUNC2();
	if (guest_limit > guest_max)
		FUNC0(1, "Not enough memory for devices");
	return addr;
}