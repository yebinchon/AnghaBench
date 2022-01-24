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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ log_file ; 
 char* log_path ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  pfd ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ specified_log_file ; 

void FUNC8(void)
{
	if (specified_log_file) {
		log_file = FUNC4(log_path, "a");
		if (!log_file)
			FUNC5("Open log file failed");
		FUNC7("Using specified log file %s\n\n", log_path);
	}

	if (!log_file) {
		log_file = FUNC4("demo.log", "a");
		if (!log_file) {
			FUNC5("Open log file failed");
			FUNC2();
		} else {
			FUNC7("Using default log file %s\n\n", "./demo.log");
		}
	}

	pfd = FUNC0(STDERR_FILENO);

	FUNC1(FUNC3(log_file), STDOUT_FILENO);
	FUNC1(FUNC3(log_file), STDERR_FILENO);

	FUNC6("Log starts\n");
}