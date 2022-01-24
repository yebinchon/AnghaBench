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
typedef  scalar_t__ uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_fcp_io_channel; scalar_t__ cfg_fcp_imax; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ LPFC_MAX_EQ_DELAY ; 
 int LPFC_MAX_IMAX ; 
 int LPFC_MIN_IMAX ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
	struct lpfc_hba *phba = vport->phba;
	int val = 0, i;

	/* fcp_imax is only valid for SLI4 */
	if (phba->sli_rev != LPFC_SLI_REV4)
		return -EINVAL;

	/* Sanity check on user data */
	if (!FUNC1(buf[0]))
		return -EINVAL;
	if (FUNC3(buf, "%i", &val) != 1)
		return -EINVAL;

	/*
	 * Value range for the HBA is [5000,5000000]
	 * The value for each EQ depends on how many EQs are configured.
	 */
	if (val < LPFC_MIN_IMAX || val > LPFC_MAX_IMAX)
		return -EINVAL;

	phba->cfg_fcp_imax = (uint32_t)val;
	for (i = 0; i < phba->cfg_fcp_io_channel; i += LPFC_MAX_EQ_DELAY)
		FUNC2(phba, i);

	return FUNC4(buf);
}