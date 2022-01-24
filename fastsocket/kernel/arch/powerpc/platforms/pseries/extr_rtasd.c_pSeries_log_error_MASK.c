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
 unsigned int ERR_FLAG_BOOT ; 
#define  ERR_TYPE_KERNEL_PANIC 129 
 unsigned int ERR_TYPE_MASK ; 
#define  ERR_TYPE_RTAS_LOG 128 
 int LOG_NUMBER ; 
 int LOG_NUMBER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  error_log_cnt ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 scalar_t__ logging_enabled ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int rtas_error_log_buffer_max ; 
 int /*<<< orphan*/ * rtas_log_buf ; 
 int rtas_log_size ; 
 int rtas_log_start ; 
 int /*<<< orphan*/  rtas_log_wait ; 
 int /*<<< orphan*/  rtasd_log_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(char *buf, unsigned int err_type, int fatal)
{
	unsigned long offset;
	unsigned long s;
	int len = 0;

	FUNC5("rtasd: logging event\n");
	if (buf == NULL)
		return;

	FUNC7(&rtasd_log_lock, s);

	/* get length and increase count */
	switch (err_type & ERR_TYPE_MASK) {
	case ERR_TYPE_RTAS_LOG:
		len = FUNC2(buf);
		if (!(err_type & ERR_FLAG_BOOT))
			error_log_cnt++;
		break;
	case ERR_TYPE_KERNEL_PANIC:
	default:
		FUNC0(!FUNC1()); /* @@@ DEBUG @@@ */
		FUNC8(&rtasd_log_lock, s);
		return;
	}

	/* Write error to NVRAM */
	if (logging_enabled && !(err_type & ERR_FLAG_BOOT))
		FUNC4(buf, len, err_type, error_log_cnt);

	/*
	 * rtas errors can occur during boot, and we do want to capture
	 * those somewhere, even if nvram isn't ready (why not?), and even
	 * if rtasd isn't ready. Put them into the boot log, at least.
	 */
	if ((err_type & ERR_TYPE_MASK) == ERR_TYPE_RTAS_LOG)
		FUNC6(buf, len);

	/* Check to see if we need to or have stopped logging */
	if (fatal || !logging_enabled) {
		logging_enabled = 0;
		FUNC0(!FUNC1()); /* @@@ DEBUG @@@ */
		FUNC8(&rtasd_log_lock, s);
		return;
	}

	/* call type specific method for error */
	switch (err_type & ERR_TYPE_MASK) {
	case ERR_TYPE_RTAS_LOG:
		offset = rtas_error_log_buffer_max *
			((rtas_log_start+rtas_log_size) & LOG_NUMBER_MASK);

		/* First copy over sequence number */
		FUNC3(&rtas_log_buf[offset], (void *) &error_log_cnt, sizeof(int));

		/* Second copy over error log data */
		offset += sizeof(int);
		FUNC3(&rtas_log_buf[offset], buf, len);

		if (rtas_log_size < LOG_NUMBER)
			rtas_log_size += 1;
		else
			rtas_log_start += 1;

		FUNC0(!FUNC1()); /* @@@ DEBUG @@@ */
		FUNC8(&rtasd_log_lock, s);
		FUNC9(&rtas_log_wait);
		break;
	case ERR_TYPE_KERNEL_PANIC:
	default:
		FUNC0(!FUNC1()); /* @@@ DEBUG @@@ */
		FUNC8(&rtasd_log_lock, s);
		return;
	}

}