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
struct ahc_softc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_INT50_SPEEDFLEX ; 
 int FUNC0 (struct ahc_softc*) ; 

__attribute__((used)) static int
FUNC1(struct ahc_softc *ahc)
{

	ahc->flags |= AHC_INT50_SPEEDFLEX;
	return (FUNC0(ahc));
}