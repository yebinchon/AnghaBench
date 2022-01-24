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
struct iwl_trans_pcie {int ucode_write_complete; int /*<<< orphan*/  ucode_write_waitq; } ;
struct iwl_trans {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK ; 
 int FH_MEM_TFDIB_REG1_ADDR_BITSHIFT ; 
 int /*<<< orphan*/  FH_SRVC_CHNL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX ; 
 int FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM ; 
 int FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD ; 
 int FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ; 
 int FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE ; 
 int FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC6 (struct iwl_trans*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct iwl_trans *trans, u32 dst_addr,
				   dma_addr_t phy_addr, u32 byte_cnt)
{
	struct iwl_trans_pcie *trans_pcie = FUNC6(trans);
	int ret;

	trans_pcie->ucode_write_complete = false;

	FUNC8(trans,
			   FUNC2(FH_SRVC_CHNL),
			   FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE);

	FUNC8(trans,
			   FUNC0(FH_SRVC_CHNL),
			   dst_addr);

	FUNC8(trans,
			   FUNC3(FH_SRVC_CHNL),
			   phy_addr & FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK);

	FUNC8(trans,
			   FUNC4(FH_SRVC_CHNL),
			   (FUNC7(phy_addr)
				<< FH_MEM_TFDIB_REG1_ADDR_BITSHIFT) | byte_cnt);

	FUNC8(trans,
			   FUNC1(FH_SRVC_CHNL),
			   1 << FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM |
			   1 << FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX |
			   FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID);

	FUNC8(trans,
			   FUNC2(FH_SRVC_CHNL),
			   FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE	|
			   FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE	|
			   FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD);

	ret = FUNC9(trans_pcie->ucode_write_waitq,
				 trans_pcie->ucode_write_complete, 5 * HZ);
	if (!ret) {
		FUNC5(trans, "Failed to load firmware chunk!\n");
		return -ETIMEDOUT;
	}

	return 0;
}