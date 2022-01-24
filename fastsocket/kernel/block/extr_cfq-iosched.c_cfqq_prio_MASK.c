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
typedef  enum wl_prio_t { ____Placeholder_wl_prio_t } wl_prio_t ;

/* Variables and functions */
 int BE_WORKLOAD ; 
 int IDLE_WORKLOAD ; 
 int RT_WORKLOAD ; 
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 

__attribute__((used)) static inline enum wl_prio_t FUNC2(struct cfq_queue *cfqq)
{
	if (FUNC0(cfqq))
		return IDLE_WORKLOAD;
	if (FUNC1(cfqq))
		return RT_WORKLOAD;
	return BE_WORKLOAD;
}