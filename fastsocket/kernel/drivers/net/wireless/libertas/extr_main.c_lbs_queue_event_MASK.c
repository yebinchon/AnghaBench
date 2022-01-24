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
typedef  int /*<<< orphan*/  u32 ;
struct lbs_private {scalar_t__ psstate; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  event_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_THREAD ; 
 scalar_t__ PS_STATE_AWAKE ; 
 scalar_t__ PS_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct lbs_private *priv, u32 event)
{
	unsigned long flags;

	FUNC1(LBS_DEB_THREAD);
	FUNC3(&priv->driver_lock, flags);

	if (priv->psstate == PS_STATE_SLEEP)
		priv->psstate = PS_STATE_AWAKE;

	FUNC0(priv->event_fifo, (unsigned char *) &event, sizeof(u32));

	FUNC5(&priv->waitq);

	FUNC4(&priv->driver_lock, flags);
	FUNC2(LBS_DEB_THREAD);
}