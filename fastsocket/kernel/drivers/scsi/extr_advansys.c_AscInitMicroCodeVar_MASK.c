#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ushort ;
typedef  int /*<<< orphan*/  uchar ;
struct asc_board {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  err_code; TYPE_1__* cfg; int /*<<< orphan*/  overrun_dma; scalar_t__ overrun_buf; int /*<<< orphan*/  iop_base; } ;
struct TYPE_6__ {void* mcode_version; void* mcode_date; int /*<<< orphan*/  chip_scsi_id; int /*<<< orphan*/  disc_enable; int /*<<< orphan*/ * sdtr_period_offset; } ;
typedef  int /*<<< orphan*/  PortAddr ;
typedef  void* ASC_PADDR ;
typedef  TYPE_2__ ASC_DVC_VAR ;
typedef  void* ASC_DCNT ;

/* Variables and functions */
 int /*<<< orphan*/  ASCV_DISC_ENABLE_B ; 
 int /*<<< orphan*/  ASCV_HOSTSCSI_ID_B ; 
 scalar_t__ ASCV_MC_DATE_W ; 
 scalar_t__ ASCV_MC_VER_W ; 
 int /*<<< orphan*/  ASCV_OVERRUN_BSIZE_D ; 
 int /*<<< orphan*/  ASCV_OVERRUN_PADDR_D ; 
 int /*<<< orphan*/  ASC_IERR_SET_PC_ADDR ; 
 int /*<<< orphan*/  ASC_IERR_START_STOP_CHIP ; 
 int ASC_MAX_TID ; 
 scalar_t__ ASC_MCODE_START_ADDR ; 
 int /*<<< orphan*/  ASC_OVERRUN_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct asc_board* FUNC10 (TYPE_2__*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ushort FUNC13(ASC_DVC_VAR *asc_dvc)
{
	int i;
	ushort warn_code;
	PortAddr iop_base;
	ASC_PADDR phy_addr;
	ASC_DCNT phy_size;
	struct asc_board *board = FUNC10(asc_dvc);

	iop_base = asc_dvc->iop_base;
	warn_code = 0;
	for (i = 0; i <= ASC_MAX_TID; i++) {
		FUNC4(iop_base, i,
					asc_dvc->cfg->sdtr_period_offset[i]);
	}

	FUNC2(asc_dvc);
	FUNC8(iop_base, ASCV_DISC_ENABLE_B,
			 asc_dvc->cfg->disc_enable);
	FUNC8(iop_base, ASCV_HOSTSCSI_ID_B,
			 FUNC0(asc_dvc->cfg->chip_scsi_id));

	/* Ensure overrun buffer is aligned on an 8 byte boundary. */
	FUNC9((unsigned long)asc_dvc->overrun_buf & 7);
	asc_dvc->overrun_dma = FUNC12(board->dev, asc_dvc->overrun_buf,
					ASC_OVERRUN_BSIZE, DMA_FROM_DEVICE);
	phy_addr = FUNC11(asc_dvc->overrun_dma);
	FUNC3(iop_base, ASCV_OVERRUN_PADDR_D,
				 (uchar *)&phy_addr, 1);
	phy_size = FUNC11(ASC_OVERRUN_BSIZE);
	FUNC3(iop_base, ASCV_OVERRUN_BSIZE_D,
				 (uchar *)&phy_size, 1);

	asc_dvc->cfg->mcode_date =
	    FUNC5(iop_base, (ushort)ASCV_MC_DATE_W);
	asc_dvc->cfg->mcode_version =
	    FUNC5(iop_base, (ushort)ASCV_MC_VER_W);

	FUNC6(iop_base, ASC_MCODE_START_ADDR);
	if (FUNC1(iop_base) != ASC_MCODE_START_ADDR) {
		asc_dvc->err_code |= ASC_IERR_SET_PC_ADDR;
		return warn_code;
	}
	if (FUNC7(iop_base) != 1) {
		asc_dvc->err_code |= ASC_IERR_START_STOP_CHIP;
		return warn_code;
	}

	return warn_code;
}