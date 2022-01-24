#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct lg_cpu {TYPE_2__* lg; } ;
struct TYPE_4__ {TYPE_1__* lguest_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lg_cpu*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 

void FUNC3(struct lg_cpu *cpu)
{
	struct timespec now;
	FUNC2(&now);
	if (FUNC0(&cpu->lg->lguest_data->time,
			 &now, sizeof(struct timespec)))
		FUNC1(cpu, "Writing timestamp");
}