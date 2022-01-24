#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int urb_length; int data_count; int /*<<< orphan*/  urb_count; } ;
struct uvd {int /*<<< orphan*/  dp; TYPE_1__ stats; int /*<<< orphan*/  streaming; } ;
struct urb {int /*<<< orphan*/  actual_length; struct uvd* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uvd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*,struct urb*) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	int len;
	struct uvd *uvd = urb->context;

	if (!FUNC0(uvd))
		return;

	if (!uvd->streaming)
		return;

	uvd->stats.urb_count++;

	if (!urb->actual_length) {
		FUNC3(uvd, urb);
		return;
	}

	len = FUNC2(uvd, urb);
	FUNC3(uvd, urb);
	uvd->stats.urb_length = len;
	uvd->stats.data_count += len;
	if (len)
		FUNC1(&uvd->dp);
}