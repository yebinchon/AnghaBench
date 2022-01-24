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
typedef  unsigned int u16 ;
struct pci_dev {unsigned int devfn; TYPE_1__* bus; } ;
struct efx_vf {unsigned int buftbl_base; unsigned int pci_rid; int /*<<< orphan*/  buf; int /*<<< orphan*/  pci_name; } ;
struct efx_nic {unsigned int vf_buftbl_base; unsigned int vf_count; struct efx_vf* vf; struct pci_dev* pci_dev; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_PAGE_SIZE ; 
 unsigned int EFX_VF_BUFTBL_PER_VI ; 
 int ENOENT ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ PCI_SRIOV_VF_OFFSET ; 
 scalar_t__ PCI_SRIOV_VF_STRIDE ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 unsigned int FUNC4 (struct efx_nic*) ; 
 int FUNC5 (TYPE_1__*) ; 
 unsigned int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC9(struct efx_nic *efx)
{
	struct pci_dev *pci_dev = efx->pci_dev;
	unsigned index, devfn, sriov, buftbl_base;
	u16 offset, stride;
	struct efx_vf *vf;
	int rc;

	sriov = FUNC6(pci_dev, PCI_EXT_CAP_ID_SRIOV);
	if (!sriov)
		return -ENOENT;

	FUNC7(pci_dev, sriov + PCI_SRIOV_VF_OFFSET, &offset);
	FUNC7(pci_dev, sriov + PCI_SRIOV_VF_STRIDE, &stride);

	buftbl_base = efx->vf_buftbl_base;
	devfn = pci_dev->devfn + offset;
	for (index = 0; index < efx->vf_count; ++index) {
		vf = efx->vf + index;

		/* Reserve buffer entries */
		vf->buftbl_base = buftbl_base;
		buftbl_base += EFX_VF_BUFTBL_PER_VI * FUNC4(efx);

		vf->pci_rid = devfn;
		FUNC8(vf->pci_name, sizeof(vf->pci_name),
			 "%04x:%02x:%02x.%d",
			 FUNC5(pci_dev->bus), pci_dev->bus->number,
			 FUNC1(devfn), FUNC0(devfn));

		rc = FUNC2(efx, &vf->buf, EFX_PAGE_SIZE);
		if (rc)
			goto fail;

		devfn += stride;
	}

	return 0;

fail:
	FUNC3(efx);
	return rc;
}