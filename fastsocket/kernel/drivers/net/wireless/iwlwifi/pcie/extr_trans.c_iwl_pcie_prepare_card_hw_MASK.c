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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans)
{
	int ret;
	int t = 0;

	FUNC0(trans, "iwl_trans_prepare_card_hw enter\n");

	ret = FUNC1(trans);
	/* If the card is ready, exit 0 */
	if (ret >= 0)
		return 0;

	/* If HW is not ready, prepare the conditions to check again */
	FUNC2(trans, CSR_HW_IF_CONFIG_REG,
		    CSR_HW_IF_CONFIG_REG_PREPARE);

	do {
		ret = FUNC1(trans);
		if (ret >= 0)
			return 0;

		FUNC3(200, 1000);
		t += 200;
	} while (t < 150000);

	return ret;
}