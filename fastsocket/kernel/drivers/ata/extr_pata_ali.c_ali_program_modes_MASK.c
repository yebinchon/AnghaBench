#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct ata_timing {int setup; int act8b; int rec8b; int active; int recover; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev, struct ata_timing *t, u8 ultra)
{
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	int cas = 0x58 + 4 * ap->port_no;	/* Command timing */
	int cbt = 0x59 + 4 * ap->port_no;	/* Command timing */
	int drwt = 0x5A + 4 * ap->port_no + adev->devno; /* R/W timing */
	int udmat = 0x56 + ap->port_no;	/* UDMA timing */
	int shift = 4 * adev->devno;
	u8 udma;

	if (t != NULL) {
		t->setup = FUNC0(t->setup, 1, 8) & 7;
		t->act8b = FUNC0(t->act8b, 1, 8) & 7;
		t->rec8b = FUNC0(t->rec8b, 1, 16) & 15;
		t->active = FUNC0(t->active, 1, 8) & 7;
		t->recover = FUNC0(t->recover, 1, 16) & 15;

		FUNC2(pdev, cas, t->setup);
		FUNC2(pdev, cbt, (t->act8b << 4) | t->rec8b);
		FUNC2(pdev, drwt, (t->active << 4) | t->recover);
	}

	/* Set up the UDMA enable */
	FUNC1(pdev, udmat, &udma);
	udma &= ~(0x0F << shift);
	udma |= ultra << shift;
	FUNC2(pdev, udmat, udma);
}