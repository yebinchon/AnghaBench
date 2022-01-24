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
struct mce {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ westmere ; 

__attribute__((used)) static int
FUNC2(int bank, struct mce *m)
{
	if (westmere && bank == 6 && ((m->status >> 16) & 0xffff) == 0x2000) {
		FUNC1(FUNC0(6), 0);
		return 1;
	}
	return 0;
}