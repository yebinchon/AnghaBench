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
struct ps3_system_bus_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_SM_RX_MSG_LEN_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct ps3_system_bus_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ps3_system_bus_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ps3_system_bus_device *dev)
{
	FUNC0(dev);
	FUNC1(dev, PS3_SM_RX_MSG_LEN_MIN);
}