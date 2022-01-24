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
typedef  int u32 ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CAMDMA_CCR_BS ; 
 int CAMDMA_CCR_DST_AMODE_POST_INC ; 
 int CAMDMA_CCR_FS ; 
 int CAMDMA_CCR_RD_ACTIVE ; 
 int CAMDMA_CCR_SEL_SRC_DST_SYNC ; 
 int CAMDMA_CCR_SRC_AMODE_POST_INC ; 
 int CAMDMA_CCR_SYNCHRO_CAMERA ; 
 int CAMDMA_CCR_WR_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int CAMDMA_CICR_BLOCK_IE ; 
 int CAMDMA_CICR_DROP_IE ; 
 int CAMDMA_CICR_MISALIGNED_ERR_IE ; 
 int CAMDMA_CICR_SECURE_ERR_IE ; 
 int CAMDMA_CICR_TRANS_ERR_IE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int CAMDMA_CSDP_DATA_TYPE_8BITS ; 
 int CAMDMA_CSDP_DST_BURST_EN_32 ; 
 int CAMDMA_CSDP_DST_PACKED ; 
 int CAMDMA_CSDP_SRC_BURST_EN_32 ; 
 int CAMDMA_CSDP_SRC_PACKED ; 
 int CAMDMA_CSDP_WRITE_MODE_POSTED ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int CAMDMA_CSR_BLOCK ; 
 int CAMDMA_CSR_DROP ; 
 int CAMDMA_CSR_MISALIGNED_ERR ; 
 int CAMDMA_CSR_SECURE_ERR ; 
 int CAMDMA_CSR_TRANS_ERR ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int DMA_THRESHOLD ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(unsigned long base, int dmach,
					     dma_addr_t start, u32 len)
{
	FUNC13(base, FUNC0(dmach),
			    CAMDMA_CCR_SEL_SRC_DST_SYNC
			    | CAMDMA_CCR_BS
			    | CAMDMA_CCR_DST_AMODE_POST_INC
			    | CAMDMA_CCR_SRC_AMODE_POST_INC
			    | CAMDMA_CCR_FS
			    | CAMDMA_CCR_WR_ACTIVE
			    | CAMDMA_CCR_RD_ACTIVE
			    | CAMDMA_CCR_SYNCHRO_CAMERA);
	FUNC13(base, FUNC7(dmach), 0);
	FUNC13(base, FUNC4(dmach), len);
	FUNC13(base, FUNC5(dmach), 1);
	FUNC13(base, FUNC8(dmach),
			    CAMDMA_CSDP_WRITE_MODE_POSTED
			    | CAMDMA_CSDP_DST_BURST_EN_32
			    | CAMDMA_CSDP_DST_PACKED
			    | CAMDMA_CSDP_SRC_BURST_EN_32
			    | CAMDMA_CSDP_SRC_PACKED
			    | CAMDMA_CSDP_DATA_TYPE_8BITS);
	FUNC13(base, FUNC12(dmach), 0);
	FUNC13(base, FUNC3(dmach), start);
	FUNC13(base, FUNC9(dmach), 0);
	FUNC13(base, FUNC10(dmach), DMA_THRESHOLD);
	FUNC13(base, FUNC1(dmach), 0);
	FUNC13(base, FUNC2(dmach), 0);
	FUNC13(base, FUNC11(dmach),
			    CAMDMA_CSR_MISALIGNED_ERR
			    | CAMDMA_CSR_SECURE_ERR
			    | CAMDMA_CSR_TRANS_ERR
			    | CAMDMA_CSR_BLOCK
			    | CAMDMA_CSR_DROP);
	FUNC13(base, FUNC6(dmach),
			    CAMDMA_CICR_MISALIGNED_ERR_IE
			    | CAMDMA_CICR_SECURE_ERR_IE
			    | CAMDMA_CICR_TRANS_ERR_IE
			    | CAMDMA_CICR_BLOCK_IE
			    | CAMDMA_CICR_DROP_IE);
}