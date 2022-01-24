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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  h4p ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int err = FUNC2(&h4p);

	if (!err)
		FUNC1("HCI H4 protocol initialized");
	else
		FUNC0("HCI H4 protocol registration failed");

	return err;
}