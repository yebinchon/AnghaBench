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
typedef  int u16 ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int EPERM ; 
#define  OCRDMA_MBX_CQE_STATUS_DMA_FAILED 132 
#define  OCRDMA_MBX_CQE_STATUS_INSUFFICIENT_PRIVILEDGES 131 
#define  OCRDMA_MBX_CQE_STATUS_INSUFFICIENT_RESOURCES 130 
#define  OCRDMA_MBX_CQE_STATUS_INVALID_PARAMETER 129 
#define  OCRDMA_MBX_CQE_STATUS_QUEUE_FLUSHING 128 

__attribute__((used)) static int FUNC0(u16 cqe_status)
{
	int err_num = -EINVAL;

	switch (cqe_status) {
	case OCRDMA_MBX_CQE_STATUS_INSUFFICIENT_PRIVILEDGES:
		err_num = -EPERM;
		break;
	case OCRDMA_MBX_CQE_STATUS_INVALID_PARAMETER:
		err_num = -EINVAL;
		break;
	case OCRDMA_MBX_CQE_STATUS_INSUFFICIENT_RESOURCES:
	case OCRDMA_MBX_CQE_STATUS_QUEUE_FLUSHING:
		err_num = -EAGAIN;
		break;
	case OCRDMA_MBX_CQE_STATUS_DMA_FAILED:
		err_num = -EIO;
		break;
	}
	return err_num;
}