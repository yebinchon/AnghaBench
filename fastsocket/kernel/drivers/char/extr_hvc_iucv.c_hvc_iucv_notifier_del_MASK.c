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
struct hvc_struct {int dummy; } ;
struct hvc_iucv_private {int /*<<< orphan*/  lock; scalar_t__ sndbuf_len; int /*<<< orphan*/  tty_state; int /*<<< orphan*/  tty_inqueue; int /*<<< orphan*/  tty_outqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hvc_iucv_private*) ; 
 struct hvc_iucv_private* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hvc_struct *hp, int id)
{
	struct hvc_iucv_private *priv;

	priv = FUNC2(id);
	if (!priv)
		return;

	FUNC1(priv);

	FUNC3(&priv->lock);
	FUNC0(&priv->tty_outqueue);
	FUNC0(&priv->tty_inqueue);
	priv->tty_state = TTY_CLOSED;
	priv->sndbuf_len = 0;
	FUNC4(&priv->lock);
}