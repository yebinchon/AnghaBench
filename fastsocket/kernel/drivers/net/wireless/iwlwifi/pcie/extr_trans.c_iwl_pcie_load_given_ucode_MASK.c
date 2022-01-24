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
struct iwl_trans {int dummy; } ;
struct fw_img {TYPE_1__* sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_RESET ; 
 int IWL_UCODE_SECTION_MAX ; 
 int FUNC0 (struct iwl_trans*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iwl_trans *trans,
				const struct fw_img *image)
{
	int i, ret = 0;

	for (i = 0; i < IWL_UCODE_SECTION_MAX; i++) {
		if (!image->sec[i].data)
			break;

		ret = FUNC0(trans, i, &image->sec[i]);
		if (ret)
			return ret;
	}

	/* Remove all resets to allow NIC to operate */
	FUNC1(trans, CSR_RESET, 0);

	return 0;
}