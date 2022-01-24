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
 int FUNC0 (int) ; 

int FUNC1(int node)
{
	int sibnode;

	if (node == -1)
		return 0;

	sibnode = FUNC0(node);
	if (sibnode == 0 || sibnode == -1)
		return 0;

	return sibnode;
}