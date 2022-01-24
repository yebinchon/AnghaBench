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
struct omap_mbox2_fifo {int /*<<< orphan*/  fifo_stat; } ;
struct omap_mbox2_priv {struct omap_mbox2_fifo tx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct omap_mbox *mbox)
{
	struct omap_mbox2_fifo *fifo =
		&((struct omap_mbox2_priv *)mbox->priv)->tx_fifo;
	return (FUNC0(fifo->fifo_stat));
}