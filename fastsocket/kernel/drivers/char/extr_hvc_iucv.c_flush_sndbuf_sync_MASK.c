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
struct hvc_iucv_private {int /*<<< orphan*/  sndbuf_waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/  tty_outqueue; int /*<<< orphan*/  sndbuf_work; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hvc_iucv_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hvc_iucv_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct hvc_iucv_private *priv)
{
	int sync_wait;

	FUNC0(&priv->sndbuf_work);

	FUNC3(&priv->lock);
	FUNC1(priv);		/* force sending buffered data */
	sync_wait = !FUNC2(&priv->tty_outqueue); /* anything queued ? */
	FUNC4(&priv->lock);

	if (sync_wait)
		FUNC6(priv->sndbuf_waitq,
				   FUNC5(priv), HZ/10);
}