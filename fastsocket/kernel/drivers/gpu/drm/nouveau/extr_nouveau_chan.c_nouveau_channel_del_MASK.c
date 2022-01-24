#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nouveau_object {int dummy; } ;
struct TYPE_7__ {TYPE_3__* buffer; int /*<<< orphan*/  vma; int /*<<< orphan*/  handle; } ;
struct nouveau_channel {TYPE_1__ push; int /*<<< orphan*/  handle; int /*<<< orphan*/  drm; scalar_t__ fence; int /*<<< orphan*/  cli; } ;
struct TYPE_9__ {scalar_t__ pin_refcnt; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* context_del ) (struct nouveau_channel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NVDRM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_channel*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nouveau_object* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_channel*) ; 

void
FUNC10(struct nouveau_channel **pchan)
{
	struct nouveau_channel *chan = *pchan;
	if (chan) {
		struct nouveau_object *client = FUNC8(chan->cli);
		if (chan->fence) {
			FUNC5(chan);
			FUNC6(chan->drm)->context_del(chan);
		}
		FUNC7(client, NVDRM_DEVICE, chan->handle);
		FUNC7(client, NVDRM_DEVICE, chan->push.handle);
		FUNC4(chan->push.buffer, &chan->push.vma);
		FUNC2(chan->push.buffer);
		if (chan->push.buffer && chan->push.buffer->pin_refcnt)
			FUNC3(chan->push.buffer);
		FUNC1(NULL, &chan->push.buffer);
		FUNC0(chan);
	}
	*pchan = NULL;
}