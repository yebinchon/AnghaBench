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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	unsigned i;
	/* Voluntary reset the watchdog timer */
	FUNC2(0x80003840, 0xCF8);
	/* Generate a CPU reset on next tick */
	i = FUNC0(0xCFC);
	/* Use the minimum timer resolution */
	i |= 0x1600;
	FUNC2(i, 0xCFC);
	FUNC1(1, 0x92);
}