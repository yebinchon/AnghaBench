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
struct request {int dummy; } ;
struct cfq_data {scalar_t__ last_position; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 

__attribute__((used)) static inline sector_t FUNC1(struct cfq_data *cfqd,
					  struct request *rq)
{
	if (FUNC0(rq) >= cfqd->last_position)
		return FUNC0(rq) - cfqd->last_position;
	else
		return cfqd->last_position - FUNC0(rq);
}