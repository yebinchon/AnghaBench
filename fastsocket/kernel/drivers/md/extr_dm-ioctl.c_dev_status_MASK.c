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
struct mapped_device {int dummy; } ;
struct dm_ioctl {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*,struct dm_ioctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*) ; 
 struct mapped_device* FUNC2 (struct dm_ioctl*) ; 

__attribute__((used)) static int FUNC3(struct dm_ioctl *param, size_t param_size)
{
	struct mapped_device *md;

	md = FUNC2(param);
	if (!md)
		return -ENXIO;

	FUNC0(md, param);
	FUNC1(md);

	return 0;
}