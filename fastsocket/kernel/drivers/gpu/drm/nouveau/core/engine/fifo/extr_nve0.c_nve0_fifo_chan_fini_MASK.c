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
typedef  int u32 ;
struct nve0_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nve0_fifo_chan {TYPE_1__ base; int /*<<< orphan*/  engine; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nve0_fifo_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nve0_fifo_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *object, bool suspend)
{
	struct nve0_fifo_priv *priv = (void *)object->engine;
	struct nve0_fifo_chan *chan = (void *)object;
	u32 chid = chan->base.chid;

	FUNC1(priv, 0x800004 + (chid * 8), 0x00000800, 0x00000800);
	FUNC3(priv, chan->engine);
	FUNC2(priv, 0x800000 + (chid * 8), 0x00000000);

	return FUNC0(&chan->base, suspend);
}