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
typedef  int /*<<< orphan*/  uint32_t ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;

/* Variables and functions */
 scalar_t__ SSCR0 ; 
 int /*<<< orphan*/  SSCR0_SSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct ssp_dev *dev)
{
	struct ssp_device *ssp = dev->ssp;
	uint32_t sscr0;

	sscr0 = FUNC0(ssp->mmio_base + SSCR0);
	sscr0 &= ~SSCR0_SSE;
	FUNC1(sscr0, ssp->mmio_base + SSCR0);
}