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
struct lbs_private {int /*<<< orphan*/ * networks; int /*<<< orphan*/  command_timer; scalar_t__ event_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 

__attribute__((used)) static void FUNC6(struct lbs_private *priv)
{
	FUNC3(LBS_DEB_MAIN);

	FUNC5(priv);
	if (priv->event_fifo)
		FUNC1(priv->event_fifo);
	FUNC0(&priv->command_timer);
	FUNC2(priv->networks);
	priv->networks = NULL;

	FUNC4(LBS_DEB_MAIN);
}