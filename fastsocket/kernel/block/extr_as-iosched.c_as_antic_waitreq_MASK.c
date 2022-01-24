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
struct as_data {scalar_t__ antic_status; scalar_t__ ioc_finished; int /*<<< orphan*/  io_context; } ;

/* Variables and functions */
 scalar_t__ ANTIC_FINISHED ; 
 scalar_t__ ANTIC_OFF ; 
 scalar_t__ ANTIC_WAIT_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct as_data*) ; 

__attribute__((used)) static void FUNC2(struct as_data *ad)
{
	FUNC0(ad->antic_status == ANTIC_FINISHED);
	if (ad->antic_status == ANTIC_OFF) {
		if (!ad->io_context || ad->ioc_finished)
			FUNC1(ad);
		else
			ad->antic_status = ANTIC_WAIT_REQ;
	}
}