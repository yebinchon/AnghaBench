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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ARTIM23 ; 
 int BRST ; 
 int CFR ; 
 int CMDTIM ; 
 int CNTRL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	u8 r;
	u8 ctrl;

	/* CMD640 detected, commiserations */
	FUNC1(pdev, 0x5B, 0x00);
	/* Get version info */
	FUNC0(pdev, CFR, &r);
	/* PIO0 command cycles */
	FUNC1(pdev, CMDTIM, 0);
	/* 512 byte bursts (sector) */
	FUNC1(pdev, BRST, 0x40);
	/*
	 * A reporter a long time ago
	 * Had problems with the data fifo
	 * So don't run the risk
	 * Of putting crap on the disk
	 * For its better just to go slow
	 */
	/* Do channel 0 */
	FUNC0(pdev, CNTRL, &ctrl);
	FUNC1(pdev, CNTRL, ctrl | 0xC0);
	/* Ditto for channel 1 */
	FUNC0(pdev, ARTIM23, &ctrl);
	ctrl |= 0x0C;
	FUNC1(pdev, ARTIM23, ctrl);
}