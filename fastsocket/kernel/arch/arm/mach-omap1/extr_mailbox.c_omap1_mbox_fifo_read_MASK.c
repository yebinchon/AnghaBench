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
struct omap_mbox1_fifo {int /*<<< orphan*/  cmd; int /*<<< orphan*/  data; } ;
struct omap_mbox1_priv {struct omap_mbox1_fifo rx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef  int mbox_msg_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mbox_msg_t FUNC1(struct omap_mbox *mbox)
{
	struct omap_mbox1_fifo *fifo =
		&((struct omap_mbox1_priv *)mbox->priv)->rx_fifo;
	mbox_msg_t msg;

	msg = FUNC0(fifo->data);
	msg |= ((mbox_msg_t) FUNC0(fifo->cmd)) << 16;

	return msg;
}