#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fc_bsg_job {TYPE_3__* request; } ;
struct TYPE_4__ {int* vendor_cmd; } ;
struct TYPE_5__ {TYPE_1__ h_vendor; } ;
struct TYPE_6__ {TYPE_2__ rqst_data; } ;

/* Variables and functions */
 int ENOSYS ; 
#define  QL_VND_A84_MGMT_CMD 142 
#define  QL_VND_A84_RESET 141 
#define  QL_VND_A84_UPDATE_FW 140 
#define  QL_VND_DIAG_IO_CMD 139 
#define  QL_VND_FCP_PRIO_CFG_CMD 138 
#define  QL_VND_FX00_MGMT_CMD 137 
#define  QL_VND_IIDMA 136 
#define  QL_VND_LOOPBACK 135 
#define  QL_VND_READ_FLASH 134 
#define  QL_VND_READ_FRU_STATUS 133 
#define  QL_VND_READ_I2C 132 
#define  QL_VND_SET_FRU_VERSION 131 
#define  QL_VND_UPDATE_FLASH 130 
#define  QL_VND_WRITE_FRU_STATUS 129 
#define  QL_VND_WRITE_I2C 128 
 int FUNC0 (struct fc_bsg_job*) ; 
 int FUNC1 (struct fc_bsg_job*) ; 
 int FUNC2 (struct fc_bsg_job*) ; 
 int FUNC3 (struct fc_bsg_job*) ; 
 int FUNC4 (struct fc_bsg_job*) ; 
 int FUNC5 (struct fc_bsg_job*) ; 
 int FUNC6 (struct fc_bsg_job*) ; 
 int FUNC7 (struct fc_bsg_job*) ; 
 int FUNC8 (struct fc_bsg_job*) ; 
 int FUNC9 (struct fc_bsg_job*) ; 
 int FUNC10 (struct fc_bsg_job*) ; 
 int FUNC11 (struct fc_bsg_job*) ; 
 int FUNC12 (struct fc_bsg_job*) ; 
 int FUNC13 (struct fc_bsg_job*) ; 
 int FUNC14 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC15(struct fc_bsg_job *bsg_job)
{
	switch (bsg_job->request->rqst_data.h_vendor.vendor_cmd[0]) {
	case QL_VND_LOOPBACK:
		return FUNC3(bsg_job);

	case QL_VND_A84_RESET:
		return FUNC12(bsg_job);

	case QL_VND_A84_UPDATE_FW:
		return FUNC13(bsg_job);

	case QL_VND_A84_MGMT_CMD:
		return FUNC11(bsg_job);

	case QL_VND_IIDMA:
		return FUNC0(bsg_job);

	case QL_VND_FCP_PRIO_CFG_CMD:
		return FUNC1(bsg_job);

	case QL_VND_READ_FLASH:
		return FUNC6(bsg_job);

	case QL_VND_UPDATE_FLASH:
		return FUNC8(bsg_job);

	case QL_VND_SET_FRU_VERSION:
		return FUNC7(bsg_job);

	case QL_VND_READ_FRU_STATUS:
		return FUNC4(bsg_job);

	case QL_VND_WRITE_FRU_STATUS:
		return FUNC9(bsg_job);

	case QL_VND_WRITE_I2C:
		return FUNC10(bsg_job);

	case QL_VND_READ_I2C:
		return FUNC5(bsg_job);

	case QL_VND_DIAG_IO_CMD:
		return FUNC2(bsg_job);

	case QL_VND_FX00_MGMT_CMD:
		return FUNC14(bsg_job);
	default:
		return -ENOSYS;
	}
}