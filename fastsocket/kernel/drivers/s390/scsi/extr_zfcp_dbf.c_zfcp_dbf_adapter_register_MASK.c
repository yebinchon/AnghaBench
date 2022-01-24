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
struct zfcp_dbf_scsi_record {int dummy; } ;
struct zfcp_dbf_san_record {int dummy; } ;
struct zfcp_dbf_rec_record {int dummy; } ;
struct zfcp_dbf_hba_record {int dummy; } ;
struct zfcp_dbf {void* scsi; void* san; void* hba; void* rec; int /*<<< orphan*/  rec_lock; int /*<<< orphan*/  scsi_lock; int /*<<< orphan*/  san_lock; int /*<<< orphan*/  hba_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DEBUG_MAX_NAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_dbf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_dbf*) ; 
 int /*<<< orphan*/  zfcp_dbf_hba_view ; 
 int /*<<< orphan*/  zfcp_dbf_rec_view ; 
 void* FUNC5 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zfcp_dbf_san_view ; 
 int /*<<< orphan*/  zfcp_dbf_scsi_view ; 

int FUNC6(struct zfcp_adapter *adapter)
{
	char dbf_name[DEBUG_MAX_NAME_LEN];
	struct zfcp_dbf *dbf;

	dbf = FUNC1(sizeof(struct zfcp_dbf), GFP_KERNEL);
	if (!dbf)
		return -ENOMEM;

	dbf->adapter = adapter;

	FUNC2(&dbf->hba_lock);
	FUNC2(&dbf->san_lock);
	FUNC2(&dbf->scsi_lock);
	FUNC2(&dbf->rec_lock);

	/* debug feature area which records recovery activity */
	FUNC3(dbf_name, "zfcp_%s_rec", FUNC0(&adapter->ccw_device->dev));
	dbf->rec = FUNC5(dbf_name, 3, &zfcp_dbf_rec_view,
				sizeof(struct zfcp_dbf_rec_record));
	if (!dbf->rec)
		goto err_out;

	/* debug feature area which records HBA (FSF and QDIO) conditions */
	FUNC3(dbf_name, "zfcp_%s_hba", FUNC0(&adapter->ccw_device->dev));
	dbf->hba = FUNC5(dbf_name, 3, &zfcp_dbf_hba_view,
				sizeof(struct zfcp_dbf_hba_record));
	if (!dbf->hba)
		goto err_out;

	/* debug feature area which records SAN command failures and recovery */
	FUNC3(dbf_name, "zfcp_%s_san", FUNC0(&adapter->ccw_device->dev));
	dbf->san = FUNC5(dbf_name, 6, &zfcp_dbf_san_view,
				sizeof(struct zfcp_dbf_san_record));
	if (!dbf->san)
		goto err_out;

	/* debug feature area which records SCSI command failures and recovery */
	FUNC3(dbf_name, "zfcp_%s_scsi", FUNC0(&adapter->ccw_device->dev));
	dbf->scsi = FUNC5(dbf_name, 3, &zfcp_dbf_scsi_view,
				 sizeof(struct zfcp_dbf_scsi_record));
	if (!dbf->scsi)
		goto err_out;

	adapter->dbf = dbf;
	return 0;

err_out:
	FUNC4(dbf);
	return -ENOMEM;
}