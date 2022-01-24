#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  ncci_head; int /*<<< orphan*/  version; TYPE_2__* card; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_4__ {unsigned int port; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct capi_ctr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(struct capi_ctr *ctrl)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	unsigned int port = card->port;
	unsigned long flags;

	FUNC6(port);
	FUNC0(port);
	FUNC0(port);

	FUNC3(cinfo->version, 0, sizeof(cinfo->version));
	FUNC4(&card->lock, flags);
	FUNC2(&cinfo->ncci_head);
	FUNC5(&card->lock, flags);
	FUNC1(ctrl);
}