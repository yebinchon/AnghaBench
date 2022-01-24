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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_resources; struct resource* resource; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__ realview_flash_device ; 

int FUNC1(struct resource *res, u32 num)
{
	realview_flash_device.resource = res;
	realview_flash_device.num_resources = num;
	return FUNC0(&realview_flash_device);
}