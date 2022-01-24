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
typedef  int u32 ;
struct omap_hsmmc_host {scalar_t__ id; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int AUTOIDLE ; 
 int /*<<< orphan*/  CAPA ; 
 int /*<<< orphan*/  HCTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ OMAP_MMC1_DEVID ; 
 int SDVS18 ; 
 int SDVS30 ; 
 int SDVS_MASK ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int VS18 ; 
 int VS30 ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static void FUNC3(struct omap_hsmmc_host *host)
{
	u32 hctl, capa, value;

	/* Only MMC1 supports 3.0V */
	if (host->id == OMAP_MMC1_DEVID) {
		hctl = SDVS30;
		capa = VS30 | VS18;
	} else {
		hctl = SDVS18;
		capa = VS18;
	}

	value = FUNC0(host->base, HCTL) & ~SDVS_MASK;
	FUNC1(host->base, HCTL, value | hctl);

	value = FUNC0(host->base, CAPA);
	FUNC1(host->base, CAPA, value | capa);

	/* Set the controller to AUTO IDLE mode */
	value = FUNC0(host->base, SYSCONFIG);
	FUNC1(host->base, SYSCONFIG, value | AUTOIDLE);

	/* Set SD bus power bit */
	FUNC2(host);
}