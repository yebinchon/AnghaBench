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
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int cfg_sriov_nr_virtfn; struct pci_dev* pcidev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int LPFC_MAX_VFN_PER_PFN ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
	struct lpfc_hba *phba = vport->phba;
	struct pci_dev *pdev = phba->pcidev;
	int val = 0, rc = -EINVAL;

	/* Sanity check on user data */
	if (!FUNC1(buf[0]))
		return -EINVAL;
	if (FUNC5(buf, "%i", &val) != 1)
		return -EINVAL;
	if (val < 0)
		return -EINVAL;

	/* Request disabling virtual functions */
	if (val == 0) {
		if (phba->cfg_sriov_nr_virtfn > 0) {
			FUNC4(pdev);
			phba->cfg_sriov_nr_virtfn = 0;
		}
		return FUNC6(buf);
	}

	/* Request enabling virtual functions */
	if (phba->cfg_sriov_nr_virtfn > 0) {
		FUNC2(phba, KERN_ERR, LOG_INIT,
				"3018 There are %d virtual functions "
				"enabled on physical function.\n",
				phba->cfg_sriov_nr_virtfn);
		return -EEXIST;
	}

	if (val <= LPFC_MAX_VFN_PER_PFN)
		phba->cfg_sriov_nr_virtfn = val;
	else {
		FUNC2(phba, KERN_ERR, LOG_INIT,
				"3019 Enabling %d virtual functions is not "
				"allowed.\n", val);
		return -EINVAL;
	}

	rc = FUNC3(phba, phba->cfg_sriov_nr_virtfn);
	if (rc) {
		phba->cfg_sriov_nr_virtfn = 0;
		rc = -EPERM;
	} else
		rc = FUNC6(buf);

	return rc;
}