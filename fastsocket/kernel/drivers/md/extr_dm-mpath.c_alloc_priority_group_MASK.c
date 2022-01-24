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
struct priority_group {int /*<<< orphan*/  pgpaths; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct priority_group* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct priority_group *FUNC2(void)
{
	struct priority_group *pg;

	pg = FUNC1(sizeof(*pg), GFP_KERNEL);

	if (pg)
		FUNC0(&pg->pgpaths);

	return pg;
}