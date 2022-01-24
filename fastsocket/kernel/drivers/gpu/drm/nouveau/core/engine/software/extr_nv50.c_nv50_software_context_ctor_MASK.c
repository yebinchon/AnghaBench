#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_6__ {int channel; TYPE_1__ event; } ;
struct TYPE_7__ {TYPE_2__ vblank; } ;
struct nv50_software_chan {TYPE_3__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int addr; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_software_chan**) ; 
 int /*<<< orphan*/  nv50_software_vblsem_release ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_object* FUNC2 (struct nv50_software_chan*) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent,
			   struct nouveau_object *engine,
			   struct nouveau_oclass *oclass, void *data, u32 size,
			   struct nouveau_object **pobject)
{
	struct nv50_software_chan *chan;
	int ret;

	ret = FUNC0(parent, engine, oclass, &chan);
	*pobject = FUNC2(chan);
	if (ret)
		return ret;

	chan->base.vblank.channel = FUNC1(parent->parent)->addr >> 12;
	chan->base.vblank.event.func = nv50_software_vblsem_release;
	return 0;
}