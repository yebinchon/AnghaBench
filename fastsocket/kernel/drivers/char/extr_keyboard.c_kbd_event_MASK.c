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
struct input_handle {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int EV_KEY ; 
 unsigned int EV_MSC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MSC_RAW ; 
 int do_poke_blanked_console ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  keyboard_tasklet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct input_handle *handle, unsigned int event_type,
		      unsigned int event_code, int value)
{
	if (event_type == EV_MSC && event_code == MSC_RAW && FUNC0(handle->dev))
		FUNC2(value);
	if (event_type == EV_KEY)
		FUNC1(event_code, value, FUNC0(handle->dev));
	FUNC4(&keyboard_tasklet);
	do_poke_blanked_console = 1;
	FUNC3();
}