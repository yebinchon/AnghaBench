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
struct hvc_iucv_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  tty_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_OPENED ; 
 struct hvc_iucv_private* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hvc_struct *hp, int id)
{
	struct hvc_iucv_private *priv;

	priv = FUNC0(id);
	if (!priv)
		return 0;

	FUNC1(&priv->lock);
	priv->tty_state = TTY_OPENED;
	FUNC2(&priv->lock);

	return 0;
}