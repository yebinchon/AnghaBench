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
struct zcrypt_ops {int dummy; } ;
struct zcrypt_device {struct zcrypt_ops* ops; } ;
struct ap_device {struct zcrypt_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zcrypt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct zcrypt_ops*) ; 

__attribute__((used)) static void FUNC2(struct ap_device *ap_dev)
{
	struct zcrypt_device *zdev = ap_dev->private;
	struct zcrypt_ops *zops;

	if (zdev) {
		zops = zdev->ops;
		FUNC0(zdev);
		FUNC1(zops);
	}
}