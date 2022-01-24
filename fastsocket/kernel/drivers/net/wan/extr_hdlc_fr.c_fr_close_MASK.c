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
struct net_device {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ ether; scalar_t__ main; } ;
typedef  TYPE_1__ pvc_device ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_4__ {TYPE_1__* first_pvc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	hdlc_device *hdlc = FUNC1(dev);
	pvc_device *pvc = FUNC2(hdlc)->first_pvc;

	while (pvc) {		/* Shutdown all PVCs for this FRAD */
		if (pvc->main)
			FUNC0(pvc->main);
		if (pvc->ether)
			FUNC0(pvc->ether);
		pvc = pvc->next;
	}
}