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
typedef  int uint32_t ;
struct ssp_state {int cr0; int cr1; int to; int psp; } ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;

/* Variables and functions */
 scalar_t__ SSCR0 ; 
 int SSCR0_SSE ; 
 scalar_t__ SSCR1 ; 
 scalar_t__ SSPSP ; 
 scalar_t__ SSSR ; 
 int SSSR_BCE ; 
 int SSSR_ROR ; 
 int SSSR_TUR ; 
 scalar_t__ SSTO ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

void FUNC1(struct ssp_dev *dev, struct ssp_state *state)
{
	struct ssp_device *ssp = dev->ssp;
	uint32_t sssr = SSSR_ROR | SSSR_TUR | SSSR_BCE;

	FUNC0(sssr, ssp->mmio_base + SSSR);

	FUNC0(state->cr0 & ~SSCR0_SSE, ssp->mmio_base + SSCR0);
	FUNC0(state->cr1, ssp->mmio_base + SSCR1);
	FUNC0(state->to,  ssp->mmio_base + SSTO);
	FUNC0(state->psp, ssp->mmio_base + SSPSP);
	FUNC0(state->cr0, ssp->mmio_base + SSCR0);
}