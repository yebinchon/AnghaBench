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
struct TYPE_4__ {TYPE_1__* save_area; } ;
struct TYPE_3__ {scalar_t__ esid; int /*<<< orphan*/  vsid; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned long,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(unsigned long ea, int ssize,
				     unsigned long flags,
				     unsigned long entry)
{
	/*
	 * Clear the ESID first so the entry is not valid while we are
	 * updating it.  No write barriers are needed here, provided
	 * we only update the current CPU's SLB shadow buffer.
	 */
	FUNC0()->save_area[entry].esid = 0;
	FUNC0()->save_area[entry].vsid = FUNC2(ea, ssize, flags);
	FUNC0()->save_area[entry].esid = FUNC1(ea, ssize, entry);
}