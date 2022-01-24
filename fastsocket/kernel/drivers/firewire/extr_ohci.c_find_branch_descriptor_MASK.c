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
struct descriptor {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int DESCRIPTOR_BRANCH_ALWAYS ; 
 int DESCRIPTOR_KEY_IMMEDIATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct descriptor *FUNC1(struct descriptor *d, int z)
{
	int b, key;

	b   = (FUNC0(d->control) & DESCRIPTOR_BRANCH_ALWAYS) >> 2;
	key = (FUNC0(d->control) & DESCRIPTOR_KEY_IMMEDIATE) >> 8;

	/* figure out which descriptor the branch address goes in */
	if (z == 2 && (b == 3 || key == 2))
		return d;
	else
		return d + z - 1;
}