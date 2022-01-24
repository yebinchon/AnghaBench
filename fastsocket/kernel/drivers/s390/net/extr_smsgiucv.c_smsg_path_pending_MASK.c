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
typedef  int /*<<< orphan*/  u8 ;
struct iucv_path {int dummy; } ;
typedef  int /*<<< orphan*/  ipvmid ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct iucv_path*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smsg_handler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC2(struct iucv_path *path, u8 ipvmid[8],
			     u8 ipuser[16])
{
	if (FUNC1(ipvmid, "*MSG    ", sizeof(ipvmid)) != 0)
		return -EINVAL;
	/* Path pending from *MSG. */
	return FUNC0(path, &smsg_handler, "SMSGIUCV        ", NULL);
}