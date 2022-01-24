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
struct cfq_queue {int dummy; } ;

/* Variables and functions */
 int ELV_MQUEUE_MAY ; 
 int ELV_MQUEUE_MUST ; 
 int /*<<< orphan*/  FUNC0 (struct cfq_queue*) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 

__attribute__((used)) static inline int FUNC3(struct cfq_queue *cfqq)
{
	if (FUNC1(cfqq) && !FUNC0(cfqq)) {
		FUNC2(cfqq);
		return ELV_MQUEUE_MUST;
	}

	return ELV_MQUEUE_MAY;
}