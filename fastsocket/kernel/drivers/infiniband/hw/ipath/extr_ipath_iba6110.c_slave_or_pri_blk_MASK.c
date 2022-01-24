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
typedef  void* u32 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ipath_devdata {int ipath_ht_slave_off; int ipath_lbus_width; int ipath_lbus_speed; int /*<<< orphan*/  ipath_lbus_info; int /*<<< orphan*/  ipath_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPATH_8BIT_IN_HT0 ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,char*,...) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int,int*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int,int*) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int) ; 

__attribute__((used)) static void FUNC9(struct ipath_devdata *dd, struct pci_dev *pdev,
			     int pos, u8 cap_type)
{
	u8 linkwidth = 0, linkerr, link_a_b_off, link_off;
	u16 linkctrl = 0;
	int i;

	dd->ipath_ht_slave_off = pos;
	/* command word, master_host bit */
	/* master host || slave */
	if ((cap_type >> 2) & 1)
		link_a_b_off = 4;
	else
		link_a_b_off = 0;
	FUNC1(VERBOSE, "HT%u (Link %c) connected to processor\n",
		   link_a_b_off ? 1 : 0,
		   link_a_b_off ? 'B' : 'A');

	link_a_b_off += pos;

	/*
	 * check both link control registers; clear both HT CRC sets if
	 * necessary.
	 */
	for (i = 0; i < 2; i++) {
		link_off = pos + i * 4 + 0x4;
		if (FUNC5(pdev, link_off, &linkctrl))
			FUNC3(dd, "Couldn't read HT link control%d "
				      "register\n", i);
		else if (linkctrl & (0xf << 8)) {
			FUNC1(VERBOSE, "Clear linkctrl%d CRC Error "
				   "bits %x\n", i, linkctrl & (0xf << 8));
			/*
			 * now write them back to clear the error.
			 */
			FUNC7(pdev, link_off,
					      linkctrl & (0xf << 8));
		}
	}

	/*
	 * As with HT CRC bits, same for protocol errors that might occur
	 * during boot.
	 */
	for (i = 0; i < 2; i++) {
		link_off = pos + i * 4 + 0xd;
		if (FUNC4(pdev, link_off, &linkerr))
			FUNC0(&pdev->dev, "Couldn't read linkerror%d "
				 "of HT slave/primary block\n", i);
		else if (linkerr & 0xf0) {
			FUNC1(VERBOSE, "HT linkerr%d bits 0x%x set, "
				   "clearing\n", linkerr >> 4, i);
			/*
			 * writing the linkerr bits that are set will clear
			 * them
			 */
			if (FUNC6
			    (pdev, link_off, linkerr))
				FUNC2("Failed write to clear HT "
					  "linkerror%d\n", i);
			if (FUNC4(pdev, link_off, &linkerr))
				FUNC0(&pdev->dev, "Couldn't reread "
					 "linkerror%d of HT slave/primary "
					 "block\n", i);
			else if (linkerr & 0xf0)
				FUNC0(&pdev->dev, "HT linkerror%d bits "
					 "0x%x couldn't be cleared\n",
					 i, linkerr >> 4);
		}
	}

	/*
	 * this is just for our link to the host, not devices connected
	 * through tunnel.
	 */

	if (FUNC4(pdev, link_a_b_off + 7, &linkwidth))
		FUNC3(dd, "Couldn't read HT link width "
			      "config register\n");
	else {
		u32 width;
		switch (linkwidth & 7) {
		case 5:
			width = 4;
			break;
		case 4:
			width = 2;
			break;
		case 3:
			width = 32;
			break;
		case 1:
			width = 16;
			break;
		case 0:
		default:	/* if wrong, assume 8 bit */
			width = 8;
			break;
		}

		dd->ipath_lbus_width = width;

		if (linkwidth != 0x11) {
			FUNC3(dd, "Not configured for 16 bit HT "
				      "(%x)\n", linkwidth);
			if (!(linkwidth & 0xf)) {
				FUNC2("Will ignore HT lane1 errors\n");
				dd->ipath_flags |= IPATH_8BIT_IN_HT0;
			}
		}
	}

	/*
	 * this is just for our link to the host, not devices connected
	 * through tunnel.
	 */
	if (FUNC4(pdev, link_a_b_off + 0xd, &linkwidth))
		FUNC3(dd, "Couldn't read HT link frequency "
			      "config register\n");
	else {
		u32 speed;
		switch (linkwidth & 0xf) {
		case 6:
			speed = 1000;
			break;
		case 5:
			speed = 800;
			break;
		case 4:
			speed = 600;
			break;
		case 3:
			speed = 500;
			break;
		case 2:
			speed = 400;
			break;
		case 1:
			speed = 300;
			break;
		default:
			/*
			 * assume reserved and vendor-specific are 200...
			 */
		case 0:
			speed = 200;
			break;
		}
		dd->ipath_lbus_speed = speed;
	}

	FUNC8(dd->ipath_lbus_info, sizeof(dd->ipath_lbus_info),
		"HyperTransport,%uMHz,x%u\n",
		dd->ipath_lbus_speed,
		dd->ipath_lbus_width);
}