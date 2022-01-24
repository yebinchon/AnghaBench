#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ws_row; int /*<<< orphan*/  ws_col; } ;
struct tty_struct {int count; scalar_t__ index; TYPE_1__ winsize; struct tty3270* driver_data; scalar_t__ low_latency; } ;
struct TYPE_8__ {int rows; int /*<<< orphan*/  ascebc; int /*<<< orphan*/  cols; } ;
struct tty3270 {int rcl_max; TYPE_2__ view; TYPE_6__* kbd; struct tty_struct* tty; scalar_t__ read; int /*<<< orphan*/  readlet; int /*<<< orphan*/  timer; int /*<<< orphan*/  rcl_lines; int /*<<< orphan*/  update; int /*<<< orphan*/  lines; int /*<<< orphan*/  inattr; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/ * fn_handler; struct tty_struct* tty; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tty3270*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  K_CONS ; 
 int /*<<< orphan*/  K_INCRCONSOLE ; 
 int /*<<< orphan*/  K_SCROLLBACK ; 
 int /*<<< orphan*/  K_SCROLLFORW ; 
 int FUNC3 (struct tty3270*) ; 
 scalar_t__ RAW3270_FIRSTMINOR ; 
 int /*<<< orphan*/  TF_INPUT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 
 int FUNC12 (struct tty3270*) ; 
 struct tty3270* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC15 (struct tty3270*) ; 
 int /*<<< orphan*/  FUNC16 (struct tty3270*) ; 
 int /*<<< orphan*/  tty3270_exit_tty ; 
 int /*<<< orphan*/  tty3270_fn ; 
 int /*<<< orphan*/  FUNC17 (struct tty3270*) ; 
 scalar_t__ tty3270_max_index ; 
 int /*<<< orphan*/  tty3270_rcl_backward ; 
 scalar_t__ tty3270_read_tasklet ; 
 int /*<<< orphan*/  tty3270_scroll_backward ; 
 int /*<<< orphan*/  tty3270_scroll_forward ; 
 scalar_t__ tty3270_update ; 
 int /*<<< orphan*/  FUNC18 (struct tty3270*) ; 

__attribute__((used)) static int
FUNC19(struct tty_struct *tty, struct file * filp)
{
	struct tty3270 *tp;
	int i, rc;

	if (tty->count > 1)
		return 0;
	/* Check if the tty3270 is already there. */
	tp = (struct tty3270 *)
		FUNC8(&tty3270_fn,
				  tty->index + RAW3270_FIRSTMINOR);
	if (!FUNC1(tp)) {
		tty->driver_data = tp;
		tty->winsize.ws_row = tp->view.rows - 2;
		tty->winsize.ws_col = tp->view.cols;
		tty->low_latency = 0;
		tp->tty = tty;
		tp->kbd->tty = tty;
		tp->inattr = TF_INPUT;
		return 0;
	}
	if (tty3270_max_index < tty->index + 1)
		tty3270_max_index = tty->index + 1;

	/* Quick exit if there is no device for tty->index. */
	if (FUNC3(tp) == -ENODEV)
		return -ENODEV;

	/* Allocate tty3270 structure on first open. */
	tp = FUNC13();
	if (FUNC1(tp))
		return FUNC3(tp);

	FUNC0(&tp->lines);
	FUNC0(&tp->update);
	FUNC0(&tp->rcl_lines);
	tp->rcl_max = 20;
	FUNC10(&tp->timer, (void (*)(unsigned long)) tty3270_update,
		    (unsigned long) tp);
	FUNC11(&tp->readlet, 
		     (void (*)(unsigned long)) tty3270_read_tasklet,
		     (unsigned long) tp->read);

	rc = FUNC6(&tp->view, &tty3270_fn,
			      tty->index + RAW3270_FIRSTMINOR);
	if (rc) {
		FUNC17(tp);
		return rc;
	}

	rc = FUNC12(tp);
	if (rc) {
		FUNC9(&tp->view);
		FUNC7(&tp->view);
		return rc;
	}

	tp->tty = tty;
	tty->low_latency = 0;
	tty->driver_data = tp;
	tty->winsize.ws_row = tp->view.rows - 2;
	tty->winsize.ws_col = tp->view.cols;

	FUNC15(tp);
	FUNC16(tp);
	FUNC18(tp);

	/* Create blank line for every line in the tty output area. */
	for (i = 0; i < tp->view.rows - 2; i++)
		FUNC14(tp);

	tp->kbd->tty = tty;
	tp->kbd->fn_handler[FUNC2(K_INCRCONSOLE)] = tty3270_exit_tty;
	tp->kbd->fn_handler[FUNC2(K_SCROLLBACK)] = tty3270_scroll_backward;
	tp->kbd->fn_handler[FUNC2(K_SCROLLFORW)] = tty3270_scroll_forward;
	tp->kbd->fn_handler[FUNC2(K_CONS)] = tty3270_rcl_backward;
	FUNC4(tp->kbd, tp->view.ascebc);

	FUNC5(&tp->view);
	return 0;
}