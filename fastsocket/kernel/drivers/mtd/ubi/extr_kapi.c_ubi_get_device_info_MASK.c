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
struct ubi_device_info {int dummy; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int UBI_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct ubi_device*,struct ubi_device_info*) ; 
 struct ubi_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*) ; 

int FUNC3(int ubi_num, struct ubi_device_info *di)
{
	struct ubi_device *ubi;

	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
		return -EINVAL;
	ubi = FUNC1(ubi_num);
	if (!ubi)
		return -ENODEV;
	FUNC0(ubi, di);
	FUNC2(ubi);
	return 0;
}