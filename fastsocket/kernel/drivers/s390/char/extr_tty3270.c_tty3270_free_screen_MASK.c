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
struct TYPE_3__ {int rows; } ;
struct tty3270 {TYPE_2__* screen; TYPE_1__ view; } ;
struct TYPE_4__ {struct TYPE_4__* cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC1(struct tty3270 *tp)
{
	int lines;

	for (lines = 0; lines < tp->view.rows - 2; lines++)
		FUNC0(tp->screen[lines].cells);
	FUNC0(tp->screen);
}