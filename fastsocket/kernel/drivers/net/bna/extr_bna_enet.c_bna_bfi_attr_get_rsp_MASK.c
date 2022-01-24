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
struct TYPE_2__ {int fw_query_complete; void* max_rit_size; int /*<<< orphan*/  num_mcmac; void* num_ucmac; void* num_rxp; void* num_txq; } ;
struct bna_ioceth {TYPE_1__ attr; } ;
struct bfi_msgq_mhdr {int dummy; } ;
struct bfi_enet_attr_rsp {int /*<<< orphan*/  rit_size; int /*<<< orphan*/  max_ucmac; int /*<<< orphan*/  max_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_MAX_MCAM ; 
 int /*<<< orphan*/  IOCETH_E_ENET_ATTR_RESP ; 
 int /*<<< orphan*/  FUNC0 (struct bna_ioceth*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bna_ioceth *ioceth,
			struct bfi_msgq_mhdr *msghdr)
{
	struct bfi_enet_attr_rsp *rsp = (struct bfi_enet_attr_rsp *)msghdr;

	/**
	 * Store only if not set earlier, since BNAD can override the HW
	 * attributes
	 */
	if (!ioceth->attr.fw_query_complete) {
		ioceth->attr.num_txq = FUNC1(rsp->max_cfg);
		ioceth->attr.num_rxp = FUNC1(rsp->max_cfg);
		ioceth->attr.num_ucmac = FUNC1(rsp->max_ucmac);
		ioceth->attr.num_mcmac = BFI_ENET_MAX_MCAM;
		ioceth->attr.max_rit_size = FUNC1(rsp->rit_size);
		ioceth->attr.fw_query_complete = true;
	}

	FUNC0(ioceth, IOCETH_E_ENET_ATTR_RESP);
}