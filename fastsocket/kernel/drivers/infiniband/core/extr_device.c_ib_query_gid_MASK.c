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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct ib_device {int (* query_gid ) (struct ib_device*,int /*<<< orphan*/ ,int,union ib_gid*) ;} ;

/* Variables and functions */
 int FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int,union ib_gid*) ; 

int FUNC1(struct ib_device *device,
		 u8 port_num, int index, union ib_gid *gid)
{
	return device->query_gid(device, port_num, index, gid);
}