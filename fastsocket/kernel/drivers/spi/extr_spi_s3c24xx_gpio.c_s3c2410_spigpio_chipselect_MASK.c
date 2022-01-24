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
struct spi_device {int dummy; } ;
struct s3c2410_spigpio {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_select ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 struct s3c2410_spigpio* FUNC0 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(struct spi_device *dev, int value)
{
	struct s3c2410_spigpio *sg = FUNC0(dev);

	if (sg->info && sg->info->chip_select)
		(sg->info->chip_select)(sg->info, value);
}