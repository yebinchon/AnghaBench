#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ap_config_time ; 
 TYPE_1__ ap_config_timer ; 
 int /*<<< orphan*/  ap_config_work ; 
 int /*<<< orphan*/  ap_work_queue ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(unsigned long ptr)
{
	FUNC1(ap_work_queue, &ap_config_work);
	ap_config_timer.expires = jiffies + ap_config_time * HZ;
	FUNC0(&ap_config_timer);
}