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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  bcount ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  button_output_buffer ; 
 scalar_t__ button_press_count ; 
 int /*<<< orphan*/  button_wait_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ reboot_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (unsigned long parameters)
{
#ifdef CONFIG_NWBUTTON_REBOOT		/* Reboot using button is enabled */
	if (button_press_count == reboot_count)
		kill_cad_pid(SIGINT, 1);	/* Ask init to reboot us */
#endif /* CONFIG_NWBUTTON_REBOOT */
	FUNC0 (button_press_count);
	bcount = FUNC2 (button_output_buffer, "%d\n", button_press_count);
	button_press_count = 0;		/* Reset the button press counter */
	FUNC3 (&button_wait_queue);
}