#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {int dummy; } ;
struct TYPE_3__ {void* gid_pn_data; void* status_read_data; void* qtcb_pool; void* status_read_req; void* scsi_abort; void* scsi_req; void* gid_pn_req; void* erp_req; } ;
struct zfcp_adapter {TYPE_1__ pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  gid_pn_cache; int /*<<< orphan*/  sr_buffer_cache; int /*<<< orphan*/  qtcb_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FSF_STATUS_READS_RECOM ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ zfcp_data ; 

__attribute__((used)) static int FUNC2(struct zfcp_adapter *adapter)
{
	/* must only be called with zfcp_data.config_mutex taken */
	adapter->pool.erp_req =
		FUNC0(1, sizeof(struct zfcp_fsf_req));
	if (!adapter->pool.erp_req)
		return -ENOMEM;

	adapter->pool.gid_pn_req =
		FUNC0(1, sizeof(struct zfcp_fsf_req));
	if (!adapter->pool.gid_pn_req)
		return -ENOMEM;

	adapter->pool.scsi_req =
		FUNC0(1, sizeof(struct zfcp_fsf_req));
	if (!adapter->pool.scsi_req)
		return -ENOMEM;

	adapter->pool.scsi_abort =
		FUNC0(1, sizeof(struct zfcp_fsf_req));
	if (!adapter->pool.scsi_abort)
		return -ENOMEM;

	adapter->pool.status_read_req =
		FUNC0(FSF_STATUS_READS_RECOM,
					    sizeof(struct zfcp_fsf_req));
	if (!adapter->pool.status_read_req)
		return -ENOMEM;

	adapter->pool.qtcb_pool =
		FUNC1(4, zfcp_data.qtcb_cache);
	if (!adapter->pool.qtcb_pool)
		return -ENOMEM;

	adapter->pool.status_read_data =
		FUNC1(FSF_STATUS_READS_RECOM,
					 zfcp_data.sr_buffer_cache);
	if (!adapter->pool.status_read_data)
		return -ENOMEM;

	adapter->pool.gid_pn_data =
		FUNC1(1, zfcp_data.gid_pn_cache);
	if (!adapter->pool.gid_pn_data)
		return -ENOMEM;

	return 0;
}