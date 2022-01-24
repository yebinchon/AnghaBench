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
struct psmouse {int dummy; } ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  kpsmoused_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct delayed_work*,unsigned long) ; 

void FUNC1(struct psmouse *psmouse, struct delayed_work *work,
		unsigned long delay)
{
	FUNC0(kpsmoused_wq, work, delay);
}