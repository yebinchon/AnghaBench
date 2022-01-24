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
struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {size_t chid; int /*<<< orphan*/  base; int /*<<< orphan*/  pushdma; int /*<<< orphan*/  pushgpu; int /*<<< orphan*/  user; } ;
struct nouveau_fifo {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** channel; } ;
struct TYPE_2__ {scalar_t__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 TYPE_1__* FUNC4 (struct nouveau_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC7(struct nouveau_fifo_chan *chan)
{
	struct nouveau_fifo *priv = (void *)FUNC4(chan)->engine;
	unsigned long flags;

	FUNC0(chan->user);

	FUNC5(&priv->lock, flags);
	priv->channel[chan->chid] = NULL;
	FUNC6(&priv->lock, flags);

	FUNC1(NULL, &chan->pushgpu);
	FUNC3(NULL, (struct nouveau_object **)&chan->pushdma);
	FUNC2(&chan->base);
}