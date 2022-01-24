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
struct zfcp_dbf {TYPE_1__* adapter; int /*<<< orphan*/  rec; int /*<<< orphan*/  hba; int /*<<< orphan*/  san; int /*<<< orphan*/  scsi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_dbf*) ; 

void FUNC2(struct zfcp_dbf *dbf)
{
	FUNC0(dbf->scsi);
	FUNC0(dbf->san);
	FUNC0(dbf->hba);
	FUNC0(dbf->rec);
	dbf->adapter->dbf = NULL;
	FUNC1(dbf);
}