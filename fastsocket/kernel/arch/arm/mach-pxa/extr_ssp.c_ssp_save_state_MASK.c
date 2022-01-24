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
struct ssp_state {void* psp; void* to; void* cr1; void* cr0; } ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;

/* Variables and functions */
 scalar_t__ SSCR0 ; 
 scalar_t__ SSCR1 ; 
 scalar_t__ SSPSP ; 
 scalar_t__ SSTO ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_dev*) ; 

void FUNC2(struct ssp_dev *dev, struct ssp_state *state)
{
	struct ssp_device *ssp = dev->ssp;

	state->cr0 = FUNC0(ssp->mmio_base + SSCR0);
	state->cr1 = FUNC0(ssp->mmio_base + SSCR1);
	state->to  = FUNC0(ssp->mmio_base + SSTO);
	state->psp = FUNC0(ssp->mmio_base + SSPSP);

	FUNC1(dev);
}