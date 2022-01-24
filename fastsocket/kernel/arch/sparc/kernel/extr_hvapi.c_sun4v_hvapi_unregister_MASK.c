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
struct api_info {int dummy; } ;

/* Variables and functions */
 struct api_info* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct api_info*) ; 
 int /*<<< orphan*/  hvapi_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned long group)
{
	struct api_info *p;
	unsigned long flags;

	FUNC2(&hvapi_lock, flags);
	p = FUNC0(group);
	if (p)
		FUNC1(p);
	FUNC3(&hvapi_lock, flags);
}