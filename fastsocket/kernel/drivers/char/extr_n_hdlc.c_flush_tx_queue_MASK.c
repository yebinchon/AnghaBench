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
struct tty_struct {int dummy; } ;
struct n_hdlc_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;
struct n_hdlc {TYPE_1__ tx_buf_list; struct n_hdlc_buf* tbuf; int /*<<< orphan*/  tx_free_buf_list; } ;

/* Variables and functions */
 struct n_hdlc_buf* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct n_hdlc_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct n_hdlc* FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct n_hdlc *n_hdlc = FUNC4(tty);
	struct n_hdlc_buf *buf;
	unsigned long flags;

	while ((buf = FUNC0(&n_hdlc->tx_buf_list)))
		FUNC1(&n_hdlc->tx_free_buf_list, buf);
 	FUNC2(&n_hdlc->tx_buf_list.spinlock, flags);
	if (n_hdlc->tbuf) {
		FUNC1(&n_hdlc->tx_free_buf_list, n_hdlc->tbuf);
		n_hdlc->tbuf = NULL;
	}
	FUNC3(&n_hdlc->tx_buf_list.spinlock, flags);
}