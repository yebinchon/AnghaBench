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
typedef  int u_int ;
struct scb {int dummy; } ;
struct ahc_softc {int flags; int features; } ;
struct ahc_dma_seg {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int AHC_39BIT_ADDRESSING ; 
 int AHC_SG_LEN_MASK ; 
 int AHC_ULTRA2 ; 
 scalar_t__ DSCOMMAND1 ; 
 int HADDLDSEL0 ; 
 scalar_t__ HADDR ; 
 scalar_t__ HCNT ; 
 scalar_t__ SCB_RESIDUAL_DATACNT ; 
 scalar_t__ SCB_RESIDUAL_SGPTR ; 
 scalar_t__ SCB_TAG ; 
 int SG_HIGH_ADDR_BITS ; 
 int SG_PTR_MASK ; 
 scalar_t__ STCNT ; 
 int FUNC0 (struct ahc_softc*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct scb* FUNC2 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,scalar_t__,int) ; 
 struct ahc_dma_seg* FUNC4 (struct scb*,int) ; 

__attribute__((used)) static void
FUNC5(struct ahc_softc *ahc)
{
	struct	 scb *scb;
	struct	 ahc_dma_seg *sg;
	u_int	 scb_index;
	uint32_t sgptr;
	uint32_t resid;
	uint32_t dataptr;

	scb_index = FUNC0(ahc, SCB_TAG);
	scb = FUNC2(ahc, scb_index);
	sgptr = (FUNC0(ahc, SCB_RESIDUAL_SGPTR + 3) << 24)
	      | (FUNC0(ahc, SCB_RESIDUAL_SGPTR + 2) << 16)
	      | (FUNC0(ahc, SCB_RESIDUAL_SGPTR + 1) << 8)
	      |	FUNC0(ahc, SCB_RESIDUAL_SGPTR);

	sgptr &= SG_PTR_MASK;
	sg = FUNC4(scb, sgptr);

	/* The residual sg_ptr always points to the next sg */
	sg--;

	resid = (FUNC0(ahc, SCB_RESIDUAL_DATACNT + 2) << 16)
	      | (FUNC0(ahc, SCB_RESIDUAL_DATACNT + 1) << 8)
	      | FUNC0(ahc, SCB_RESIDUAL_DATACNT);

	dataptr = FUNC1(sg->addr)
		+ (FUNC1(sg->len) & AHC_SG_LEN_MASK)
		- resid;
	if ((ahc->flags & AHC_39BIT_ADDRESSING) != 0) {
		u_int dscommand1;

		dscommand1 = FUNC0(ahc, DSCOMMAND1);
		FUNC3(ahc, DSCOMMAND1, dscommand1 | HADDLDSEL0);
		FUNC3(ahc, HADDR,
			 (FUNC1(sg->len) >> 24) & SG_HIGH_ADDR_BITS);
		FUNC3(ahc, DSCOMMAND1, dscommand1);
	}
	FUNC3(ahc, HADDR + 3, dataptr >> 24);
	FUNC3(ahc, HADDR + 2, dataptr >> 16);
	FUNC3(ahc, HADDR + 1, dataptr >> 8);
	FUNC3(ahc, HADDR, dataptr);
	FUNC3(ahc, HCNT + 2, resid >> 16);
	FUNC3(ahc, HCNT + 1, resid >> 8);
	FUNC3(ahc, HCNT, resid);
	if ((ahc->features & AHC_ULTRA2) == 0) {
		FUNC3(ahc, STCNT + 2, resid >> 16);
		FUNC3(ahc, STCNT + 1, resid >> 8);
		FUNC3(ahc, STCNT, resid);
	}
}