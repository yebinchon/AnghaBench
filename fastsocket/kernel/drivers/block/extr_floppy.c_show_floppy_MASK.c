#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  jiffies; int /*<<< orphan*/  status; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_7__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD_STATUS ; 
 int OLOGSIZE ; 
 int /*<<< orphan*/  command_status ; 
 int /*<<< orphan*/  cont ; 
 int /*<<< orphan*/  current_req ; 
 scalar_t__ do_floppy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ fd_timeout ; 
 TYPE_2__ fd_timer ; 
 int /*<<< orphan*/  fdc_busy ; 
 TYPE_1__ floppy_work ; 
 scalar_t__ interruptjiffies ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lasthandler ; 
 int /*<<< orphan*/  lastredo ; 
 TYPE_3__* output_log ; 
 int output_log_pos ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * reply_buffer ; 
 int /*<<< orphan*/  resultjiffies ; 
 int resultsize ; 
 int /*<<< orphan*/  timeout_message ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	FUNC1("\n");
	FUNC1("floppy driver state\n");
	FUNC1("-------------------\n");
	FUNC1("now=%lu last interrupt=%lu diff=%lu last called handler=%p\n",
	       jiffies, interruptjiffies, jiffies - interruptjiffies,
	       lasthandler);

#ifdef FLOPPY_SANITY_CHECK
	printk("timeout_message=%s\n", timeout_message);
	printk("last output bytes:\n");
	for (i = 0; i < OLOGSIZE; i++)
		printk("%2x %2x %lu\n",
		       output_log[(i + output_log_pos) % OLOGSIZE].data,
		       output_log[(i + output_log_pos) % OLOGSIZE].status,
		       output_log[(i + output_log_pos) % OLOGSIZE].jiffies);
	printk("last result at %lu\n", resultjiffies);
	printk("last redo_fd_request at %lu\n", lastredo);
	for (i = 0; i < resultsize; i++) {
		printk("%2x ", reply_buffer[i]);
	}
	printk("\n");
#endif

	FUNC1("status=%x\n", FUNC0(FD_STATUS));
	FUNC1("fdc_busy=%lu\n", fdc_busy);
	if (do_floppy)
		FUNC1("do_floppy=%p\n", do_floppy);
	if (FUNC3(&floppy_work))
		FUNC1("floppy_work.func=%p\n", floppy_work.func);
	if (FUNC2(&fd_timer))
		FUNC1("fd_timer.function=%p\n", fd_timer.function);
	if (FUNC2(&fd_timeout)) {
		FUNC1("timer_function=%p\n", fd_timeout.function);
		FUNC1("expires=%lu\n", fd_timeout.expires - jiffies);
		FUNC1("now=%lu\n", jiffies);
	}
	FUNC1("cont=%p\n", cont);
	FUNC1("current_req=%p\n", current_req);
	FUNC1("command_status=%d\n", command_status);
	FUNC1("\n");
}