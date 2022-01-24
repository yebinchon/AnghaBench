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
typedef  int /*<<< orphan*/  TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int TW_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(TW_Device_Extension *tw_dev) 
{
	u32 status_reg_value, response_que_value;

	status_reg_value = FUNC2(FUNC1(tw_dev));

	while ((status_reg_value & TW_STATUS_RESPONSE_QUEUE_EMPTY) == 0) {
		response_que_value = FUNC2(FUNC0(tw_dev));
		status_reg_value = FUNC2(FUNC1(tw_dev));
	}
}