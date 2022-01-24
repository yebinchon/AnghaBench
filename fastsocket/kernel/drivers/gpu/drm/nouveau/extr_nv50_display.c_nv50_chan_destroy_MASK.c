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
struct nv50_chan {scalar_t__ handle; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVO_CORE_HANDLE ; 
 int /*<<< orphan*/  NV_CLIENT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct nouveau_object* FUNC1 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nouveau_object *core, struct nv50_chan *chan)
{
	struct nouveau_object *client = FUNC1(core, NV_CLIENT_CLASS);
	if (chan->handle)
		FUNC0(client, EVO_CORE_HANDLE, chan->handle);
}