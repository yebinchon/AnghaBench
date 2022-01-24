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
struct subchannel_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cio_work_q ; 
 int /*<<< orphan*/  css_eval_scheduled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct subchannel_id) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slow_path_work ; 
 int /*<<< orphan*/  slow_subchannel_lock ; 
 int /*<<< orphan*/  slow_subchannel_set ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct subchannel_id schid)
{
	unsigned long flags;

	FUNC3(&slow_subchannel_lock, flags);
	FUNC1(slow_subchannel_set, schid);
	FUNC0(&css_eval_scheduled, 1);
	FUNC2(cio_work_q, &slow_path_work);
	FUNC4(&slow_subchannel_lock, flags);
}