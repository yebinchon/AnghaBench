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
struct work_struct {int dummy; } ;
struct ps3_vuart_port_driver {int /*<<< orphan*/  (* work ) (struct ps3_system_bus_device*) ;} ;
struct ps3_system_bus_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ps3_vuart_port_driver* FUNC1 (struct ps3_system_bus_device*) ; 
 struct ps3_system_bus_device* FUNC2 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps3_system_bus_device*) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct ps3_system_bus_device *dev =
		FUNC2(work);
	struct ps3_vuart_port_driver *drv =
		FUNC1(dev);

	FUNC0(!drv);
	drv->work(dev);
}