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
struct enic {unsigned int rq_count; int /*<<< orphan*/ * napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enic*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct enic *enic)
{
	unsigned int i;

	for (i = 0; i < enic->rq_count; i++)
		FUNC2(&enic->napi[i]);

	FUNC1(enic);
	FUNC0(enic);
}