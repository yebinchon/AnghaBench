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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm {int /*<<< orphan*/  nvm_data; TYPE_3__* nvm_sections; TYPE_2__* cfg; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  eeprom_size; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int* nvm_to_read ; 

int FUNC6(struct iwl_mvm *mvm)
{
	int ret, i, section;
	u8 *nvm_buffer, *temp;

	/* TODO: find correct NVM max size for a section */
	nvm_buffer = FUNC4(mvm->cfg->base_params->eeprom_size,
			     GFP_KERNEL);
	if (!nvm_buffer)
		return -ENOMEM;
	for (i = 0; i < FUNC0(nvm_to_read); i++) {
		section = nvm_to_read[i];
		/* we override the constness for initial read */
		ret = FUNC1(mvm, section, nvm_buffer);
		if (ret < 0)
			break;
		temp = FUNC5(nvm_buffer, ret, GFP_KERNEL);
		if (!temp) {
			ret = -ENOMEM;
			break;
		}
		mvm->nvm_sections[section].data = temp;
		mvm->nvm_sections[section].length = ret;
	}
	FUNC3(nvm_buffer);
	if (ret < 0)
		return ret;

	ret = 0;
	mvm->nvm_data = FUNC2(mvm);

	return ret;
}