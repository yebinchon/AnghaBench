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
 int /*<<< orphan*/  OMAP2_MCSPI_CHCONF_DMAR ; 
 int /*<<< orphan*/  OMAP2_MCSPI_CHCONF_DMAW ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device const*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct spi_device *spi,
		int is_read, int enable)
{
	u32 l, rw;

	l = FUNC1(spi);

	if (is_read) /* 1 is read, 0 write */
		rw = OMAP2_MCSPI_CHCONF_DMAR;
	else
		rw = OMAP2_MCSPI_CHCONF_DMAW;

	FUNC0(l, rw, enable);
	FUNC2(spi, l);
}