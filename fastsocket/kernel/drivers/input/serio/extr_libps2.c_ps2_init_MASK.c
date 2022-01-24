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
struct serio {int /*<<< orphan*/  depth; } ;
struct ps2dev {struct serio* serio; int /*<<< orphan*/  wait; int /*<<< orphan*/  cmd_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ps2dev *ps2dev, struct serio *serio)
{
	FUNC2(&ps2dev->cmd_mutex);
	FUNC1(&ps2dev->cmd_mutex, serio->depth);
	FUNC0(&ps2dev->wait);
	ps2dev->serio = serio;
}