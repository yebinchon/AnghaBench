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
typedef  int /*<<< orphan*/  u32 ;
struct brcms_info {int /*<<< orphan*/  isr_lock; int /*<<< orphan*/  wlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC3(struct brcms_info *wl)
{
	unsigned long flags;
	u32 status;

	FUNC1(&wl->isr_lock, flags);
	status = FUNC0(wl->wlc);
	FUNC2(&wl->isr_lock, flags);
	return status;
}