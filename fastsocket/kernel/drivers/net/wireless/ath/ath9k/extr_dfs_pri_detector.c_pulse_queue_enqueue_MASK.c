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
typedef  void* u64 ;
struct pulse_elem {int /*<<< orphan*/  head; void* ts; } ;
struct pri_detector {scalar_t__ count; scalar_t__ max_count; void* last_ts; int /*<<< orphan*/  pulses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pulse_elem* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pulse_elem* FUNC4 () ; 
 int /*<<< orphan*/  pulse_alloc_error ; 
 int /*<<< orphan*/  pulse_allocated ; 
 int /*<<< orphan*/  FUNC5 (struct pri_detector*) ; 
 int /*<<< orphan*/  FUNC6 (struct pri_detector*) ; 
 int /*<<< orphan*/  pulse_used ; 

__attribute__((used)) static bool FUNC7(struct pri_detector *pde, u64 ts)
{
	struct pulse_elem *p = FUNC4();
	if (p == NULL) {
		p = FUNC2(sizeof(*p), GFP_ATOMIC);
		if (p == NULL) {
			FUNC0(pulse_alloc_error);
			return false;
		}
		FUNC0(pulse_allocated);
		FUNC0(pulse_used);
	}
	FUNC1(&p->head);
	p->ts = ts;
	FUNC3(&p->head, &pde->pulses);
	pde->count++;
	pde->last_ts = ts;
	FUNC5(pde);
	if (pde->count >= pde->max_count)
		FUNC6(pde);
	return true;
}