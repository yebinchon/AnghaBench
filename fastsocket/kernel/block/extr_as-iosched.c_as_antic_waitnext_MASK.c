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
struct as_data {scalar_t__ antic_status; unsigned long antic_start; unsigned long antic_expire; int /*<<< orphan*/  antic_timer; } ;

/* Variables and functions */
 scalar_t__ ANTIC_OFF ; 
 scalar_t__ ANTIC_WAIT_NEXT ; 
 scalar_t__ ANTIC_WAIT_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct as_data *ad)
{
	unsigned long timeout;

	FUNC0(ad->antic_status != ANTIC_OFF
			&& ad->antic_status != ANTIC_WAIT_REQ);

	timeout = ad->antic_start + ad->antic_expire;

	FUNC1(&ad->antic_timer, timeout);

	ad->antic_status = ANTIC_WAIT_NEXT;
}