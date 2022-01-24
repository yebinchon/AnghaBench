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
struct spi_imx_data {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int MX27_INTREG_RREN ; 
 unsigned int MX27_INTREG_TEEN ; 
 scalar_t__ MXC_CSPIINT ; 
 int MXC_INT_RR ; 
 int MXC_INT_TE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct spi_imx_data *spi_imx, int enable)
{
	unsigned int val = 0;

	if (enable & MXC_INT_TE)
		val |= MX27_INTREG_TEEN;
	if (enable & MXC_INT_RR)
		val |= MX27_INTREG_RREN;

	FUNC0(val, spi_imx->base + MXC_CSPIINT);
}