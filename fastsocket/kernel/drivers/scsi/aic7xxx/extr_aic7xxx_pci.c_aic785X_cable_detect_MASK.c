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
typedef  int uint8_t ;
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int BRDCS ; 
 int /*<<< orphan*/  BRDCTL ; 
 int BRDDAT5 ; 
 int BRDDAT6 ; 
 int BRDRW ; 
 int EEPROM ; 
 int EXT_BRDCTL ; 
 int SOFTCMDEN ; 
 int /*<<< orphan*/  SPIOCAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ahc_softc *ahc, int *internal50_present,
		     int *externalcable_present, int *eeprom_present)
{
	uint8_t brdctl;
	uint8_t spiocap;

	spiocap = FUNC2(ahc, SPIOCAP);
	spiocap &= ~SOFTCMDEN;
	spiocap |= EXT_BRDCTL;
	FUNC3(ahc, SPIOCAP, spiocap);
	FUNC3(ahc, BRDCTL, BRDRW|BRDCS);
	FUNC1(ahc);
	FUNC0(500);
	FUNC3(ahc, BRDCTL, 0);
	FUNC1(ahc);
	FUNC0(500);
	brdctl = FUNC2(ahc, BRDCTL);
	*internal50_present = (brdctl & BRDDAT5) ? 0 : 1;
	*externalcable_present = (brdctl & BRDDAT6) ? 0 : 1;
	*eeprom_present = (FUNC2(ahc, SPIOCAP) & EEPROM) ? 1 : 0;
}