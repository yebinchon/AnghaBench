#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_gpct {TYPE_1__* counter_dev; } ;
typedef  enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {int (* read_register ) (struct ni_gpct*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NITIO_Num_Registers ; 
 int FUNC1 (struct ni_gpct*,int) ; 

__attribute__((used)) static inline unsigned FUNC2(struct ni_gpct *counter,
				     enum ni_gpct_register reg)
{
	FUNC0(reg >= NITIO_Num_Registers);
	return counter->counter_dev->read_register(counter, reg);
}