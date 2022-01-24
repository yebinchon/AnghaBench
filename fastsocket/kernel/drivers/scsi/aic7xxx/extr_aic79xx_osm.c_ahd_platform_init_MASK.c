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
struct ahd_softc {size_t unit; } ;
struct ahd_linux_iocell_opts {scalar_t__ precomp; scalar_t__ slewrate; scalar_t__ amplitude; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,scalar_t__) ; 
 scalar_t__ AIC79XX_DEFAULT_AMPLITUDE ; 
 scalar_t__ AIC79XX_DEFAULT_PRECOMP ; 
 scalar_t__ AIC79XX_DEFAULT_SLEWRATE ; 
 size_t FUNC3 (struct ahd_linux_iocell_opts*) ; 
 struct ahd_linux_iocell_opts* aic79xx_iocell_info ; 

void
FUNC4(struct ahd_softc *ahd)
{
	/*
	 * Lookup and commit any modified IO Cell options.
	 */
	if (ahd->unit < FUNC3(aic79xx_iocell_info)) {
		const struct ahd_linux_iocell_opts *iocell_opts;

		iocell_opts = &aic79xx_iocell_info[ahd->unit];
		if (iocell_opts->precomp != AIC79XX_DEFAULT_PRECOMP)
			FUNC1(ahd, iocell_opts->precomp);
		if (iocell_opts->slewrate != AIC79XX_DEFAULT_SLEWRATE)
			FUNC2(ahd, iocell_opts->slewrate);
		if (iocell_opts->amplitude != AIC79XX_DEFAULT_AMPLITUDE)
			FUNC0(ahd, iocell_opts->amplitude);
	}

}