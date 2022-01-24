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
struct scsi_disk {int dummy; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 struct scsi_disk* FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sd_ref_mutex ; 

__attribute__((used)) static struct scsi_disk *FUNC3(struct gendisk *disk)
{
	struct scsi_disk *sdkp;

	FUNC1(&sd_ref_mutex);
	sdkp = FUNC0(disk);
	FUNC2(&sd_ref_mutex);
	return sdkp;
}