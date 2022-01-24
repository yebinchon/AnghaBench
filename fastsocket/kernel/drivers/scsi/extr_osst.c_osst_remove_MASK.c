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
struct scsi_device {scalar_t__ type; } ;
struct osst_tape {struct osst_tape* buffer; int /*<<< orphan*/  header_cache; int /*<<< orphan*/  drive; struct scsi_device* device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSST_MAJOR ; 
 scalar_t__ TYPE_TAPE ; 
 int /*<<< orphan*/  FUNC1 (struct osst_tape*) ; 
 int /*<<< orphan*/  FUNC2 (struct osst_tape*) ; 
 struct osst_tape** os_scsi_tapes ; 
 int /*<<< orphan*/  os_scsi_tapes_lock ; 
 int osst_max_dev ; 
 scalar_t__ osst_nr_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct scsi_device * SDp = FUNC5(dev);
	struct osst_tape * tpnt;
	int i;

	if ((SDp->type != TYPE_TAPE) || (osst_nr_dev <= 0))
		return 0;

	FUNC7(&os_scsi_tapes_lock);
	for(i=0; i < osst_max_dev; i++) {
		if((tpnt = os_scsi_tapes[i]) && (tpnt->device == SDp)) {
			FUNC3(FUNC0(OSST_MAJOR, i));
			FUNC3(FUNC0(OSST_MAJOR, i+128));
			tpnt->device = NULL;
			FUNC4(tpnt->drive);
			os_scsi_tapes[i] = NULL;
			osst_nr_dev--;
			FUNC8(&os_scsi_tapes_lock);
			FUNC6(tpnt->header_cache);
			if (tpnt->buffer) {
				FUNC2(tpnt->buffer);
				FUNC1(tpnt->buffer);
			}
			FUNC1(tpnt);
			return 0;
		}
	}
	FUNC8(&os_scsi_tapes_lock);
	return 0;
}