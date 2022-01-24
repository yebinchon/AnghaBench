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
struct omap_mbox1_priv {struct omap_mbox1_fifo tx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef  int mbox_msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct omap_mbox *mbox, mbox_msg_t msg)
{
	struct omap_mbox1_fifo *fifo =
		&((struct omap_mbox1_priv *)mbox->priv)->tx_fifo;

	FUNC0(msg & 0xffff, fifo->data);
	FUNC0(msg >> 16, fifo->cmd);
}