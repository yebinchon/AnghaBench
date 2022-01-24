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
 int /*<<< orphan*/  GPIO_IN ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(void *data, int val)
{
	int i = 5000;

	if (val) {
		FUNC0(FUNC2(data), GPIO_IN);
		while(!FUNC1(FUNC2(data)) && i--);
	} else {
		FUNC0(FUNC2(data), GPIO_OUT);
	}
}