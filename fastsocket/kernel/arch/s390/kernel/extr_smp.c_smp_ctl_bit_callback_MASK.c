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
struct ec_creg_mask_parms {unsigned long* andvals; unsigned long* orvals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *info)
{
	struct ec_creg_mask_parms *pp = info;
	unsigned long cregs[16];
	int i;

	FUNC1(cregs, 0, 15);
	for (i = 0; i <= 15; i++)
		cregs[i] = (cregs[i] & pp->andvals[i]) | pp->orvals[i];
	FUNC0(cregs, 0, 15);
}