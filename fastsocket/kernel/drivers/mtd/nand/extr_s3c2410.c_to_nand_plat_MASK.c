#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s3c2410_platform_nand {int dummy; } ;
struct TYPE_2__ {struct s3c2410_platform_nand* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */

__attribute__((used)) static struct s3c2410_platform_nand *FUNC0(struct platform_device *dev)
{
	return dev->dev.platform_data;
}