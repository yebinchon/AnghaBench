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
struct nv31_mpeg_priv {int /*<<< orphan*/  refcount; } ;
struct nv31_mpeg_chan {int /*<<< orphan*/  base; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nouveau_object *object)
{
	struct nv31_mpeg_priv *priv = (void *)object->engine;
	struct nv31_mpeg_chan *chan = (void *)object;
	FUNC0(&priv->refcount);
	FUNC1(&chan->base);
}