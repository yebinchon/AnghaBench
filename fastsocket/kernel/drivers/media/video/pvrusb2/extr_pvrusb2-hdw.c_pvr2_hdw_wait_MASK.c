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
struct pvr2_hdw {scalar_t__ state_stale; int master_state; int /*<<< orphan*/  state_wait_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct pvr2_hdw *hdw,int state)
{
	return FUNC0(
		hdw->state_wait_data,
		(hdw->state_stale == 0) &&
		(!state || (hdw->master_state != state)));
}