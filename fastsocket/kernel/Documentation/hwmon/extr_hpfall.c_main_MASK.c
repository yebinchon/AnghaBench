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
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
typedef  int /*<<< orphan*/  count ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int EINVAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ignore_me ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 () ; 

int FUNC18(int argc, char **argv)
{
	int fd, ret;
	struct sched_param param;

	if (argc == 1)
		ret = FUNC15("/dev/sda");
	else if (argc == 2)
		ret = FUNC15(argv[1]);
	else
		ret = -EINVAL;

	if (ret || !FUNC17()) {
		FUNC4(stderr, "usage: %s <device> (default: /dev/sda)\n",
				argv[0]);
		FUNC3(1);
	}

	fd = FUNC8("/dev/freefall", O_RDONLY);
	if (fd < 0) {
		FUNC9("/dev/freefall");
		return EXIT_FAILURE;
	}

	FUNC2(0, 0);
	param.sched_priority = FUNC12(SCHED_FIFO);
	FUNC13(0, SCHED_FIFO, &param);
	FUNC6(MCL_CURRENT|MCL_FUTURE);

	FUNC16(SIGALRM, ignore_me);

	for (;;) {
		unsigned char count;

		ret = FUNC11(fd, &count, sizeof(count));
		FUNC0(0);
		if ((ret == -1) && (errno == EINTR)) {
			/* Alarm expired, time to unpark the heads */
			continue;
		}

		if (ret != sizeof(count)) {
			FUNC9("read");
			break;
		}

		FUNC10(21);
		FUNC14(1);
		if (1 || FUNC7() || FUNC5())
			FUNC0(2);
		else
			FUNC0(20);
	}

	FUNC1(fd);
	return EXIT_SUCCESS;
}