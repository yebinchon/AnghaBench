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
typedef  scalar_t__ u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int (* query_port ) (struct ib_device*,scalar_t__,struct ib_port_attr*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ib_device*) ; 
 scalar_t__ FUNC1 (struct ib_device*) ; 
 int FUNC2 (struct ib_device*,scalar_t__,struct ib_port_attr*) ; 

int FUNC3(struct ib_device *device,
		  u8 port_num,
		  struct ib_port_attr *port_attr)
{
	if (port_num < FUNC1(device) || port_num > FUNC0(device))
		return -EINVAL;

	return device->query_port(device, port_num, port_attr);
}