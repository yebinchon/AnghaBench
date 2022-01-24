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
struct nvc0_graph_chan {int /*<<< orphan*/  base; int /*<<< orphan*/  mmio; int /*<<< orphan*/  mmio_vma; TYPE_1__* data; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct nouveau_object *object)
{
	struct nvc0_graph_chan *chan = (void *)object;
	int i;

	for (i = 0; i < FUNC0(chan->data); i++) {
		FUNC2(&chan->data[i].vma);
		FUNC1(NULL, &chan->data[i].mem);
	}

	FUNC2(&chan->mmio_vma);
	FUNC1(NULL, &chan->mmio);

	FUNC3(&chan->base);
}