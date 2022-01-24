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
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * state; TYPE_1__* proto; } ;
typedef  TYPE_2__ hdlc_device ;
struct TYPE_4__ {int /*<<< orphan*/  module; int /*<<< orphan*/  (* detach ) (struct net_device*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev)
{
	hdlc_device *hdlc = FUNC0(dev);

	if (hdlc->proto) {
		if (hdlc->proto->detach)
			hdlc->proto->detach(dev);
		FUNC3(hdlc->proto->module);
		hdlc->proto = NULL;
	}
	FUNC2(hdlc->state);
	hdlc->state = NULL;
	FUNC1(dev);
}