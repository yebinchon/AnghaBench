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
struct hfc_multi {scalar_t__ pci_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfc_multi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  R_CTRL ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,scalar_t__) ; 

inline unsigned char
FUNC3(struct hfc_multi *hc, unsigned char address)
{
	unsigned short cipv;
	unsigned char data;

	if (!hc->pci_iobase)
		return 0;

	/* slow down a PCI read access by 1 PCI clock cycle */
	FUNC0(hc, R_CTRL, 0x4); /*was _io before*/

	if (address == 0)
		cipv = 0x4000;
	else
		cipv = 0x5800;

	/* select local bridge port address by writing to CIP port */
	/* data = HFC_inb(c, cipv); * was _io before */
	FUNC2(cipv, hc->pci_iobase + 4);
	data = FUNC1(hc->pci_iobase);

	/* restore R_CTRL for normal PCI read cycle speed */
	FUNC0(hc, R_CTRL, 0x0); /* was _io before */

	return data;
}