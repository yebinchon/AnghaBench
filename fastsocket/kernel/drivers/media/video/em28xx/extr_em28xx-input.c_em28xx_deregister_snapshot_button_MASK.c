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
struct em28xx {int /*<<< orphan*/ * sbutton_input_dev; int /*<<< orphan*/  sbutton_query_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct em28xx *dev)
{
	if (dev->sbutton_input_dev != NULL) {
		FUNC1("Deregistering snapshot button\n");
		FUNC0(&dev->sbutton_query_work);
		FUNC2(dev->sbutton_input_dev);
		dev->sbutton_input_dev = NULL;
	}
	return;
}