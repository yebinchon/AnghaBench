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
struct v4l2_prio_state {int /*<<< orphan*/ * prios; } ;
typedef  enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;

/* Variables and functions */
 size_t V4L2_PRIORITY_BACKGROUND ; 
 size_t V4L2_PRIORITY_INTERACTIVE ; 
 size_t V4L2_PRIORITY_RECORD ; 
 int V4L2_PRIORITY_UNSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

enum v4l2_priority FUNC1(struct v4l2_prio_state *global)
{
	if (FUNC0(&global->prios[V4L2_PRIORITY_RECORD]) > 0)
		return V4L2_PRIORITY_RECORD;
	if (FUNC0(&global->prios[V4L2_PRIORITY_INTERACTIVE]) > 0)
		return V4L2_PRIORITY_INTERACTIVE;
	if (FUNC0(&global->prios[V4L2_PRIORITY_BACKGROUND]) > 0)
		return V4L2_PRIORITY_BACKGROUND;
	return V4L2_PRIORITY_UNSET;
}