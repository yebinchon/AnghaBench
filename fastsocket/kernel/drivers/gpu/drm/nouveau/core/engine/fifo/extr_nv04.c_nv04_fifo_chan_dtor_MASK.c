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
struct ramfc_desc {scalar_t__ ctxp; scalar_t__ bits; } ;
struct nv04_fifo_priv {int /*<<< orphan*/  ramfc; struct ramfc_desc* ramfc_desc; } ;
struct nv04_fifo_chan {int /*<<< orphan*/  base; scalar_t__ ramfc; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC2(struct nouveau_object *object)
{
	struct nv04_fifo_priv *priv = (void *)object->engine;
	struct nv04_fifo_chan *chan = (void *)object;
	struct ramfc_desc *c = priv->ramfc_desc;

	do {
		FUNC1(priv->ramfc, chan->ramfc + c->ctxp, 0x00000000);
	} while ((++c)->bits);

	FUNC0(&chan->base);
}