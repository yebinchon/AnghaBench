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
struct net_device {TYPE_3__* ml_priv; } ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_7__ {scalar_t__ open_count; TYPE_2__ state; int /*<<< orphan*/  frad; } ;
typedef  TYPE_3__ pvc_device ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_5__ {scalar_t__ lmi; scalar_t__ dce; } ;
struct TYPE_8__ {int dce_changed; TYPE_1__ settings; } ;

/* Variables and functions */
 scalar_t__ LMI_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	pvc_device *pvc = dev->ml_priv;

	if (--pvc->open_count == 0) {
		hdlc_device *hdlc = FUNC0(pvc->frad);
		if (FUNC1(hdlc)->settings.lmi == LMI_NONE)
			pvc->state.active = 0;

		if (FUNC1(hdlc)->settings.dce) {
			FUNC1(hdlc)->dce_changed = 1;
			pvc->state.active = 0;
		}
	}
	return 0;
}