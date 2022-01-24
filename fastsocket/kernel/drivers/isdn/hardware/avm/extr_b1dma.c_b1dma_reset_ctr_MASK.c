#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  ncci_head; int /*<<< orphan*/  version; TYPE_2__* card; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct capi_ctr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct capi_ctr *ctrl)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	unsigned long flags;

	FUNC4(&card->lock, flags);
 	FUNC0(card);

	FUNC3(cinfo->version, 0, sizeof(cinfo->version));
	FUNC2(&cinfo->ncci_head);
	FUNC5(&card->lock, flags);
	FUNC1(ctrl);
}