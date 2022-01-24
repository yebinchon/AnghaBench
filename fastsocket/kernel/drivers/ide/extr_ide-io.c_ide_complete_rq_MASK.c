#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct TYPE_5__ {struct request* rq; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int FUNC2 (TYPE_2__*,struct request*,int,unsigned int) ; 

int FUNC3(ide_drive_t *drive, int error, unsigned int nr_bytes)
{
	ide_hwif_t *hwif = drive->hwif;
	struct request *rq = hwif->rq;
	int rc;

	/*
	 * if failfast is set on a request, override number of sectors
	 * and complete the whole request right now
	 */
	if (FUNC0(rq) && error <= 0)
		nr_bytes = FUNC1(rq) << 9;

	rc = FUNC2(drive, rq, error, nr_bytes);
	if (rc == 0)
		hwif->rq = NULL;

	return rc;
}