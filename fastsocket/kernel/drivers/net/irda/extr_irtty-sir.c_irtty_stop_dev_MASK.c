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
struct tty_struct {TYPE_1__* ops; } ;
struct sirtty_cb {scalar_t__ magic; struct tty_struct* tty; } ;
struct sir_dev {struct sirtty_cb* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int ESTALE ; 
 scalar_t__ IRTTY_MAGIC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  irtty_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sir_dev *dev)
{
	struct sirtty_cb *priv;
	struct tty_struct *tty;

	/* serialize with ldisc open/close */
	FUNC1(&irtty_mutex);

	priv = dev->priv;
	if (FUNC4(!priv || priv->magic!=IRTTY_MAGIC)) {
		FUNC2(&irtty_mutex);
		return -ESTALE;
	}

	tty = priv->tty;

	/* Make sure we don't receive more data */
	FUNC0(tty, TRUE);
	if (tty->ops->stop)
		tty->ops->stop(tty);

	FUNC2(&irtty_mutex);

	return 0;
}