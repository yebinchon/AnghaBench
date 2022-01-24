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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ pf_busy ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  pf_queue ; 
 int /*<<< orphan*/  pf_spin_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(int err)
{
	unsigned long saved_flags;

	FUNC2(&pf_spin_lock, saved_flags);
	FUNC1(err);
	pf_busy = 0;
	FUNC0(pf_queue);
	FUNC3(&pf_spin_lock, saved_flags);
}