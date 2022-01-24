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
struct scsi_tape {struct scsi_tape* buffer; struct scsi_tape* reserved_pages; int /*<<< orphan*/ * device; struct gendisk* disk; } ;
struct kref {int dummy; } ;
struct gendisk {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_tape*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_tape*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 struct scsi_tape* FUNC3 (struct kref*) ; 

__attribute__((used)) static void FUNC4(struct kref *kref)
{
	struct scsi_tape *tpnt = FUNC3(kref);
	struct gendisk *disk = tpnt->disk;

	tpnt->device = NULL;

	if (tpnt->buffer) {
		FUNC1(tpnt->buffer);
		FUNC0(tpnt->buffer->reserved_pages);
		FUNC0(tpnt->buffer);
	}

	disk->private_data = NULL;
	FUNC2(disk);
	FUNC0(tpnt);
	return;
}