#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct nvc0_graph_priv {int size; int* data; int /*<<< orphan*/  firmware; struct nvc0_graph_mmio* mmio_list; struct nvc0_graph_mmio* mmio_data; } ;
struct nvc0_graph_mmio {int size; int align; int access; int addr; int data; int shift; size_t buffer; } ;
struct nvc0_graph_data {int size; int align; int access; int addr; int data; int shift; size_t buffer; } ;
struct TYPE_5__ {int offset; } ;
struct nvc0_graph_chan {int mmio_nr; TYPE_2__ mmio_vma; struct nvc0_graph_chan* mmio; TYPE_1__* data; } ;
struct nouveau_vm {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {struct nouveau_vm* vm; } ;
struct TYPE_4__ {TYPE_2__ vma; struct nvc0_graph_chan* mem; } ;

/* Variables and functions */
 int FUNC0 (struct nvc0_graph_mmio*) ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int NV_MEM_ACCESS_RW ; 
 int NV_MEM_ACCESS_SYS ; 
 int FUNC1 (int) ; 
 TYPE_3__* FUNC2 (struct nouveau_object*) ; 
 int FUNC3 (struct nvc0_graph_chan*,struct nouveau_vm*,int,TYPE_2__*) ; 
 int FUNC4 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nvc0_graph_chan**) ; 
 int FUNC5 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nvc0_graph_chan**) ; 
 struct nvc0_graph_chan* FUNC6 (struct nvc0_graph_chan*) ; 
 struct nouveau_object* FUNC7 (struct nvc0_graph_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvc0_graph_chan*,int,int) ; 
 int FUNC9 (int) ; 

int
FUNC10(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass, void *args, u32 size,
			struct nouveau_object **pobject)
{
	struct nouveau_vm *vm = FUNC2(parent)->vm;
	struct nvc0_graph_priv *priv = (void *)engine;
	struct nvc0_graph_data *data = priv->mmio_data;
	struct nvc0_graph_mmio *mmio = priv->mmio_list;
	struct nvc0_graph_chan *chan;
	int ret, i;

	/* allocate memory for context, and fill with default values */
	ret = FUNC5(parent, engine, oclass, NULL,
					   priv->size, 0x100,
					   NVOBJ_FLAG_ZERO_ALLOC, &chan);
	*pobject = FUNC7(chan);
	if (ret)
		return ret;

	/* allocate memory for a "mmio list" buffer that's used by the HUB
	 * fuc to modify some per-context register settings on first load
	 * of the context.
	 */
	ret = FUNC4(parent, NULL, 0x1000, 0x100, 0, &chan->mmio);
	if (ret)
		return ret;

	ret = FUNC3(FUNC6(chan->mmio), vm,
				    NV_MEM_ACCESS_RW | NV_MEM_ACCESS_SYS,
				    &chan->mmio_vma);
	if (ret)
		return ret;

	/* allocate buffers referenced by mmio list */
	for (i = 0; data->size && i < FUNC0(priv->mmio_data); i++) {
		ret = FUNC4(parent, NULL, data->size, data->align,
					 0, &chan->data[i].mem);
		if (ret)
			return ret;

		ret = FUNC3(chan->data[i].mem, vm, data->access,
					   &chan->data[i].vma);
		if (ret)
			return ret;

		data++;
	}

	/* finally, fill in the mmio list and point the context at it */
	for (i = 0; mmio->addr && i < FUNC0(priv->mmio_list); i++) {
		u32 addr = mmio->addr;
		u32 data = mmio->data;

		if (mmio->shift) {
			u64 info = chan->data[mmio->buffer].vma.offset;
			data |= info >> mmio->shift;
		}

		FUNC8(chan->mmio, chan->mmio_nr++ * 4, addr);
		FUNC8(chan->mmio, chan->mmio_nr++ * 4, data);
		mmio++;
	}

	for (i = 0; i < priv->size; i += 4)
		FUNC8(chan, i, priv->data[i / 4]);

	if (!priv->firmware) {
		FUNC8(chan, 0x00, chan->mmio_nr / 2);
		FUNC8(chan, 0x04, chan->mmio_vma.offset >> 8);
	} else {
		FUNC8(chan, 0xf4, 0);
		FUNC8(chan, 0xf8, 0);
		FUNC8(chan, 0x10, chan->mmio_nr / 2);
		FUNC8(chan, 0x14, FUNC1(chan->mmio_vma.offset));
		FUNC8(chan, 0x18, FUNC9(chan->mmio_vma.offset));
		FUNC8(chan, 0x1c, 1);
		FUNC8(chan, 0x20, 0);
		FUNC8(chan, 0x28, 0);
		FUNC8(chan, 0x2c, 0);
	}

	return 0;
}