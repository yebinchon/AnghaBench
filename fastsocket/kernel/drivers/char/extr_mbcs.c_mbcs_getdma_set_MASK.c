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
union intr_dest {scalar_t__ intr_dest_reg; void* int_vector; void* address; } ;
union dma_localaddr {scalar_t__ dma_localaddr_reg; void* dma_ram_sel; void* dma_ram_addr; } ;
union dma_hostaddr {scalar_t__ dma_hostaddr_reg; void* dma_sys_addr; } ;
union dma_control {scalar_t__ dma_control_reg; void* pio_mem_n; void* done_int_en; void* done_amo_en; void* dma_op_length; } ;
union dma_amo_dest {scalar_t__ dma_amo_dest_reg; void* dma_amo_mod_type; void* dma_amo_sys_addr; } ;
typedef  void* uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MBCS_RD_DMA_AMO_DEST ; 
 int /*<<< orphan*/  MBCS_RD_DMA_CTRL ; 
 int /*<<< orphan*/  MBCS_RD_DMA_INT_DEST ; 
 int /*<<< orphan*/  MBCS_RD_DMA_LOC_ADDR ; 
 int /*<<< orphan*/  MBCS_RD_DMA_SYS_ADDR ; 

__attribute__((used)) static inline void FUNC1(void *mmr,
		       uint64_t hostAddr,
		       uint64_t localAddr,
		       uint64_t localRamSel,
		       uint64_t numPkts,
		       uint64_t amoEnable,
		       uint64_t intrEnable,
		       uint64_t peerIO,
		       uint64_t amoHostDest,
		       uint64_t amoModType, uint64_t intrHostDest,
		       uint64_t intrVector)
{
	union dma_control rdma_control;
	union dma_amo_dest amo_dest;
	union intr_dest intr_dest;
	union dma_localaddr local_addr;
	union dma_hostaddr host_addr;

	rdma_control.dma_control_reg = 0;
	amo_dest.dma_amo_dest_reg = 0;
	intr_dest.intr_dest_reg = 0;
	local_addr.dma_localaddr_reg = 0;
	host_addr.dma_hostaddr_reg = 0;

	host_addr.dma_sys_addr = hostAddr;
	FUNC0(mmr, MBCS_RD_DMA_SYS_ADDR, host_addr.dma_hostaddr_reg);

	local_addr.dma_ram_addr = localAddr;
	local_addr.dma_ram_sel = localRamSel;
	FUNC0(mmr, MBCS_RD_DMA_LOC_ADDR, local_addr.dma_localaddr_reg);

	rdma_control.dma_op_length = numPkts;
	rdma_control.done_amo_en = amoEnable;
	rdma_control.done_int_en = intrEnable;
	rdma_control.pio_mem_n = peerIO;
	FUNC0(mmr, MBCS_RD_DMA_CTRL, rdma_control.dma_control_reg);

	amo_dest.dma_amo_sys_addr = amoHostDest;
	amo_dest.dma_amo_mod_type = amoModType;
	FUNC0(mmr, MBCS_RD_DMA_AMO_DEST, amo_dest.dma_amo_dest_reg);

	intr_dest.address = intrHostDest;
	intr_dest.int_vector = intrVector;
	FUNC0(mmr, MBCS_RD_DMA_INT_DEST, intr_dest.intr_dest_reg);

}