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
struct iwl_trans_pcie {unsigned long long ict_tbl; int ict_tbl_dma; int /*<<< orphan*/  inta_mask; scalar_t__ ict_index; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT_BIT_RX_PERIODIC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,unsigned long long) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	trans_pcie->ict_tbl =
		FUNC3(trans->dev, ICT_SIZE,
				   &trans_pcie->ict_tbl_dma,
				   GFP_KERNEL);
	if (!trans_pcie->ict_tbl)
		return -ENOMEM;

	/* just an API sanity check ... it is guaranteed to be aligned */
	if (FUNC2(trans_pcie->ict_tbl_dma & (ICT_SIZE - 1))) {
		FUNC4(trans);
		return -EINVAL;
	}

	FUNC0(trans, "ict dma addr %Lx\n",
		      (unsigned long long)trans_pcie->ict_tbl_dma);

	FUNC0(trans, "ict vir addr %p\n", trans_pcie->ict_tbl);

	/* reset table and index to all 0 */
	FUNC5(trans_pcie->ict_tbl, 0, ICT_SIZE);
	trans_pcie->ict_index = 0;

	/* add periodic RX interrupt */
	trans_pcie->inta_mask |= CSR_INT_BIT_RX_PERIODIC;
	return 0;
}