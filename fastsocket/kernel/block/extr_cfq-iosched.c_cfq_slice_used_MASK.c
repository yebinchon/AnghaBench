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
struct cfq_queue {int /*<<< orphan*/  slice_end; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct cfq_queue *cfqq)
{
	if (FUNC0(cfqq))
		return 0;
	if (FUNC1(jiffies, cfqq->slice_end))
		return 0;

	return 1;
}