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
struct ata_device {int dummy; } ;
struct ata_acpi_gtf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 int FUNC1 (struct ata_device*,struct ata_acpi_gtf*,struct ata_acpi_gtf*) ; 
 int FUNC2 (struct ata_device*,struct ata_acpi_gtf**) ; 

__attribute__((used)) static int FUNC3(struct ata_device *dev, int *nr_executed)
{
	struct ata_acpi_gtf *gtf = NULL, *pgtf = NULL;
	int gtf_count, i, rc;

	/* get taskfiles */
	rc = FUNC2(dev, &gtf);
	if (rc < 0)
		return rc;
	gtf_count = rc;

	/* execute them */
	for (i = 0; i < gtf_count; i++, gtf++) {
		rc = FUNC1(dev, gtf, pgtf);
		if (rc < 0)
			break;
		if (rc) {
			(*nr_executed)++;
			pgtf = gtf;
		}
	}

	FUNC0(dev);

	if (rc < 0)
		return rc;
	return 0;
}