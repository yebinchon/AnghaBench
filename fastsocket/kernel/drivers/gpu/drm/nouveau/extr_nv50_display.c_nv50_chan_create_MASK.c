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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nv50_chan {int /*<<< orphan*/  handle; int /*<<< orphan*/  user; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nouveau_object*) ; 
 int /*<<< orphan*/  EVO_CORE_HANDLE ; 
 int /*<<< orphan*/  NV_CLIENT_CLASS ; 
 int FUNC2 (struct nouveau_object*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nouveau_object* FUNC3 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *core, u32 bclass, u8 head,
		 void *data, u32 size, struct nv50_chan *chan)
{
	struct nouveau_object *client = FUNC3(core, NV_CLIENT_CLASS);
	const u32 oclass = FUNC1(bclass, core);
	const u32 handle = FUNC0(bclass, head);
	int ret;

	ret = FUNC2(client, EVO_CORE_HANDLE, handle,
				 oclass, data, size, &chan->user);
	if (ret)
		return ret;

	chan->handle = handle;
	return 0;
}