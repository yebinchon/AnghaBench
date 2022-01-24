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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATUS_COMPLETE ; 
 int /*<<< orphan*/  CMD_STATUS_FUNCTION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  CMD_STATUS_HOST_FAILURE ; 
 int /*<<< orphan*/  CMD_STATUS_IDLE ; 
 int /*<<< orphan*/  CMD_STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  CMD_STATUS_IN_PROGRESS ; 
 int /*<<< orphan*/  CMD_STATUS_SCAN_FAILED ; 
 int /*<<< orphan*/  CMD_STATUS_TIME_OUT ; 
 int /*<<< orphan*/  CMD_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(u8 cmd_status)
{
	switch (cmd_status) {
		FUNC0(CMD_STATUS_IDLE);
		FUNC0(CMD_STATUS_COMPLETE);
		FUNC0(CMD_STATUS_UNKNOWN);
		FUNC0(CMD_STATUS_INVALID_PARAMETER);
		FUNC0(CMD_STATUS_FUNCTION_NOT_SUPPORTED);
		FUNC0(CMD_STATUS_TIME_OUT);
		FUNC0(CMD_STATUS_IN_PROGRESS);
		FUNC0(CMD_STATUS_HOST_FAILURE);
		FUNC0(CMD_STATUS_SCAN_FAILED);
	}

	return "UNKNOWN";
}