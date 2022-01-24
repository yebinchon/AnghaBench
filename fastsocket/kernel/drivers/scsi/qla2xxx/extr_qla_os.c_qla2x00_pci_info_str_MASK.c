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
typedef  int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int pci_attr; } ;

/* Variables and functions */
 int BIT_10 ; 
 int BIT_8 ; 
 int BIT_9 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *
FUNC2(struct scsi_qla_host *vha, char *str)
{
	struct qla_hw_data *ha = vha->hw;
	static char *pci_bus_modes[] = {
		"33", "66", "100", "133",
	};
	uint16_t pci_bus;

	FUNC1(str, "PCI");
	pci_bus = (ha->pci_attr & (BIT_9 | BIT_10)) >> 9;
	if (pci_bus) {
		FUNC0(str, "-X (");
		FUNC0(str, pci_bus_modes[pci_bus]);
	} else {
		pci_bus = (ha->pci_attr & BIT_8) >> 8;
		FUNC0(str, " (");
		FUNC0(str, pci_bus_modes[pci_bus]);
	}
	FUNC0(str, " MHz)");

	return (str);
}