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
struct ahc_softc {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_HVD ; 
 int FUNC0 (struct ahc_softc*) ; 

__attribute__((used)) static int
FUNC1(struct ahc_softc *ahc)
{
	int error = FUNC0(ahc);

	ahc->features |= AHC_HVD;

	return error;
}