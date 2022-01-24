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
struct qeth_mc_mac {int is_vmac; int /*<<< orphan*/  list; int /*<<< orphan*/  mc_addrlen; int /*<<< orphan*/  mc_addr; } ;
struct qeth_card {int /*<<< orphan*/  mc_list; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPA_CMD_SETVMAC ; 
 int /*<<< orphan*/  OSA_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_mc_mac*) ; 
 struct qeth_mc_mac* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct qeth_card *card, __u8 *mac, int vmac)
{
	struct qeth_mc_mac *mc;
	int rc;

	mc = FUNC1(sizeof(struct qeth_mc_mac), GFP_ATOMIC);

	if (!mc)
		return;

	FUNC3(mc->mc_addr, mac, OSA_ADDR_LEN);
	mc->mc_addrlen = OSA_ADDR_LEN;
	mc->is_vmac = vmac;

	if (vmac) {
		rc = FUNC4(card, mac, IPA_CMD_SETVMAC,
					NULL);
	} else {
		rc = FUNC5(card, mac);
	}

	if (!rc)
		FUNC2(&mc->list, &card->mc_list);
	else
		FUNC0(mc);
}