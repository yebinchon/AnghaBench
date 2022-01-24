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
struct ubi_device {scalar_t__ ref_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ubi_device** ubi_devices ; 
 int /*<<< orphan*/  ubi_devices_lock ; 

struct ubi_device *FUNC4(int ubi_num)
{
	struct ubi_device *ubi;

	FUNC1(&ubi_devices_lock);
	ubi = ubi_devices[ubi_num];
	if (ubi) {
		FUNC3(ubi->ref_count >= 0);
		ubi->ref_count += 1;
		FUNC0(&ubi->dev);
	}
	FUNC2(&ubi_devices_lock);

	return ubi;
}