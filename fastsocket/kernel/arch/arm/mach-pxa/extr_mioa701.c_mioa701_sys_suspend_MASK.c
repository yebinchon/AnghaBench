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
typedef  int u32 ;
struct sys_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int BOOTSTRAP_WORDS ; 
 int /*<<< orphan*/  GPIO83_BT_ON ; 
 int /*<<< orphan*/  MFP_LPM_DRIVE_HIGH ; 
 int /*<<< orphan*/  MFP_LPM_DRIVE_LOW ; 
 int /*<<< orphan*/  RESUME_BT_ADDR ; 
 int /*<<< orphan*/  RESUME_ENABLE_ADDR ; 
 int RESUME_ENABLE_VAL ; 
 int /*<<< orphan*/  RESUME_UNKNOWN_ADDR ; 
 int /*<<< orphan*/  RESUME_VECTOR_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* save_buffer ; 

__attribute__((used)) static int FUNC4(struct sys_device *sysdev, pm_message_t state)
{
	int i = 0, is_bt_on;
	u32 *mem_resume_vector	= FUNC2(RESUME_VECTOR_ADDR);
	u32 *mem_resume_enabler = FUNC2(RESUME_ENABLE_ADDR);
	u32 *mem_resume_bt	= FUNC2(RESUME_BT_ADDR);
	u32 *mem_resume_unknown	= FUNC2(RESUME_UNKNOWN_ADDR);

	/* Devices prepare suspend */
	is_bt_on = !!FUNC0(GPIO83_BT_ON);
	FUNC3(GPIO83_BT_ON,
			   is_bt_on ? MFP_LPM_DRIVE_HIGH : MFP_LPM_DRIVE_LOW);

	for (i = 0; i < BOOTSTRAP_WORDS; i++)
		save_buffer[i] = mem_resume_vector[i];
	save_buffer[i++] = *mem_resume_enabler;
	save_buffer[i++] = *mem_resume_bt;
	save_buffer[i++] = *mem_resume_unknown;

	*mem_resume_enabler = RESUME_ENABLE_VAL;
	*mem_resume_bt	    = is_bt_on;

	FUNC1();
	return 0;
}