#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ status; } ;
struct wl1251_command {TYPE_1__ header; } ;
struct wl1251 {int /*<<< orphan*/  cmd_box_addr; } ;

/* Variables and functions */
 scalar_t__ CMD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  CMD_TEST ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1251*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1251 *wl, void *buf, size_t buf_len, u8 answer)
{
	int ret;

	FUNC1(DEBUG_CMD, "cmd test");

	ret = FUNC0(wl, CMD_TEST, buf, buf_len);

	if (ret < 0) {
		FUNC4("TEST command failed");
		return ret;
	}

	if (answer) {
		struct wl1251_command *cmd_answer;

		/*
		 * The test command got in, we can read the answer.
		 * The answer would be a wl1251_command, where the
		 * parameter array contains the actual answer.
		 */
		FUNC3(wl, wl->cmd_box_addr, buf, buf_len);

		cmd_answer = buf;

		if (cmd_answer->header.status != CMD_STATUS_SUCCESS)
			FUNC2("TEST command answer error: %d",
				     cmd_answer->header.status);
	}

	return 0;
}