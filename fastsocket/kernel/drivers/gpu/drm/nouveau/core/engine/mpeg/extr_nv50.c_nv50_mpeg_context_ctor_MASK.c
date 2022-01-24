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
struct nv50_mpeg_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 struct nouveau_bar* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nv50_mpeg_chan**) ; 
 struct nouveau_object* FUNC2 (struct nv50_mpeg_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_mpeg_chan*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bar*) ; 

int
FUNC5(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, void *data, u32 size,
		       struct nouveau_object **pobject)
{
	struct nouveau_bar *bar = FUNC0(parent);
	struct nv50_mpeg_chan *chan;
	int ret;

	ret = FUNC1(parent, engine, oclass, NULL, 128 * 4,
					  0, NVOBJ_FLAG_ZERO_ALLOC, &chan);
	*pobject = FUNC2(chan);
	if (ret)
		return ret;

	FUNC3(chan, 0x0070, 0x00801ec1);
	FUNC3(chan, 0x007c, 0x0000037c);
	bar->flush(bar);
	return 0;
}