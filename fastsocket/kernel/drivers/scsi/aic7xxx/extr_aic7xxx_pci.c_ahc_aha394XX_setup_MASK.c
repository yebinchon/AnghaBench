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
struct ahc_softc {char channel; int /*<<< orphan*/  dev_softc; } ;
typedef  int /*<<< orphan*/  ahc_dev_softc_t ;

/* Variables and functions */
#define  AHC_394X_SLOT_CHANNEL_A 129 
#define  AHC_394X_SLOT_CHANNEL_B 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(struct ahc_softc *ahc)
{
	ahc_dev_softc_t pci;

	pci = ahc->dev_softc;
	switch (FUNC0(pci)) {
	case AHC_394X_SLOT_CHANNEL_A:
		ahc->channel = 'A';
		break;
	case AHC_394X_SLOT_CHANNEL_B:
		ahc->channel = 'B';
		break;
	default:
		FUNC1("adapter at unexpected slot %d\n"
		       "unable to map to a channel\n",
		       FUNC0(pci));
		ahc->channel = 'A';
	}
	return (0);
}