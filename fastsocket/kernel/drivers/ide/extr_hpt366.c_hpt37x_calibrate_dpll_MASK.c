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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, u16 f_low, u16 f_high)
{
	u32 dpll = (f_high << 16) | f_low | 0x100;
	u8  scr2;
	int i;

	FUNC2(dev, 0x5c, dpll);

	/* Wait for oscillator ready */
	for(i = 0; i < 0x5000; ++i) {
		FUNC3(50);
		FUNC0(dev, 0x5b, &scr2);
		if (scr2 & 0x80)
			break;
	}
	/* See if it stays ready (we'll just bail out if it's not yet) */
	for(i = 0; i < 0x1000; ++i) {
		FUNC0(dev, 0x5b, &scr2);
		/* DPLL destabilized? */
		if(!(scr2 & 0x80))
			return 0;
	}
	/* Turn off tuning, we have the DPLL set */
	FUNC1 (dev, 0x5c, &dpll);
	FUNC2(dev, 0x5c, (dpll & ~0x100));
	return 1;
}