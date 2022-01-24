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
struct ap_device {scalar_t__ queue_count; int /*<<< orphan*/  reset; int /*<<< orphan*/  timeout; TYPE_1__* drv; } ;
struct TYPE_2__ {int request_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_RESET_IGNORE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct ap_device *ap_dev)
{
	int timeout = ap_dev->drv->request_timeout;

	ap_dev->queue_count--;
	if (ap_dev->queue_count > 0)
		FUNC0(&ap_dev->timeout, jiffies + timeout);
	else
		/*
		 * The timeout timer should to be disabled now - since
		 * del_timer_sync() is very expensive, we just tell via the
		 * reset flag to ignore the pending timeout timer.
		 */
		ap_dev->reset = AP_RESET_IGNORE;
}