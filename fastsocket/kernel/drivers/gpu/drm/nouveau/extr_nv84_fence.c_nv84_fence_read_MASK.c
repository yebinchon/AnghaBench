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
typedef  int /*<<< orphan*/  u32 ;
struct nv84_fence_priv {int /*<<< orphan*/  bo; } ;
struct nouveau_fifo_chan {int chid; } ;
struct nouveau_channel {TYPE_1__* drm; scalar_t__ object; } ;
struct TYPE_2__ {struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32
FUNC1(struct nouveau_channel *chan)
{
	struct nouveau_fifo_chan *fifo = (void *)chan->object;
	struct nv84_fence_priv *priv = chan->drm->fence;
	return FUNC0(priv->bo, fifo->chid * 16/4);
}