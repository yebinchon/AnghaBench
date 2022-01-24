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
typedef  int /*<<< orphan*/  u32 ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OMAP2_MCSPI_CHCONF_FORCE ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, int cs_active)
{
	u32 l;

	l = FUNC1(spi);
	FUNC0(l, OMAP2_MCSPI_CHCONF_FORCE, cs_active);
	FUNC2(spi, l);
}