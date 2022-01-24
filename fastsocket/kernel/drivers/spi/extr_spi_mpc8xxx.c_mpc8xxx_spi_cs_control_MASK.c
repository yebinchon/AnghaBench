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
typedef  size_t u16 ;
struct TYPE_2__ {struct device* parent; } ;
struct spi_device {size_t chip_select; TYPE_1__ dev; } ;
struct mpc8xxx_spi_probe_info {int* gpios; int* alow_flags; } ;
struct device {int /*<<< orphan*/  platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct mpc8xxx_spi_probe_info* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi, bool on)
{
	struct device *dev = spi->dev.parent;
	struct mpc8xxx_spi_probe_info *pinfo = FUNC1(dev->platform_data);
	u16 cs = spi->chip_select;
	int gpio = pinfo->gpios[cs];
	bool alow = pinfo->alow_flags[cs];

	FUNC0(gpio, on ^ alow);
}