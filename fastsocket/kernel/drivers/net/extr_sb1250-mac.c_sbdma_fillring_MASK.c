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
struct sbmacdma {int dummy; } ;
struct sbmac_softc {int dummy; } ;

/* Variables and functions */
 int SBMAC_MAX_RXDESCR ; 
 scalar_t__ FUNC0 (struct sbmac_softc*,struct sbmacdma*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct sbmac_softc *sc, struct sbmacdma *d)
{
	int idx;

	for (idx = 0; idx < SBMAC_MAX_RXDESCR - 1; idx++) {
		if (FUNC0(sc, d, NULL) != 0)
			break;
	}
}