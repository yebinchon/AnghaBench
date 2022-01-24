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
struct cfq_queue {int /*<<< orphan*/  ioprio; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_queue*) ; 
 int FUNC1 (struct cfq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	return FUNC1(cfqd, FUNC0(cfqq), cfqq->ioprio);
}