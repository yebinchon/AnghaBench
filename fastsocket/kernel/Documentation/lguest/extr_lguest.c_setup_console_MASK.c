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
struct termios {int c_lflag; } ;
struct device {scalar_t__ priv; } ;
struct console_abort {scalar_t__ count; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_num; } ;

/* Variables and functions */
 int ECHO ; 
 int ICANON ; 
 int ISIG ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  VIRTIO_ID_CONSOLE ; 
 int /*<<< orphan*/  VIRTQUEUE_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  console_input ; 
 int /*<<< orphan*/  console_output ; 
 TYPE_1__ devices ; 
 scalar_t__ FUNC1 (int) ; 
 struct device* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct termios orig_term ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	struct device *dev;

	/* If we can save the initial standard input settings... */
	if (FUNC3(STDIN_FILENO, &orig_term) == 0) {
		struct termios term = orig_term;
		/*
		 * Then we turn off echo, line buffering and ^C etc: We want a
		 * raw input stream to the Guest.
		 */
		term.c_lflag &= ~(ISIG|ICANON|ECHO);
		FUNC4(STDIN_FILENO, TCSANOW, &term);
	}

	dev = FUNC2("console", VIRTIO_ID_CONSOLE);

	/* We store the console state in dev->priv, and initialize it. */
	dev->priv = FUNC1(sizeof(struct console_abort));
	((struct console_abort *)dev->priv)->count = 0;

	/*
	 * The console needs two virtqueues: the input then the output.  When
	 * they put something the input queue, we make sure we're listening to
	 * stdin.  When they put something in the output queue, we write it to
	 * stdout.
	 */
	FUNC0(dev, VIRTQUEUE_NUM, console_input);
	FUNC0(dev, VIRTQUEUE_NUM, console_output);

	FUNC5("device %u: console\n", ++devices.device_num);
}