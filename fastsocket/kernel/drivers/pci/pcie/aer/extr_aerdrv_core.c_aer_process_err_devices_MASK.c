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
struct pcie_device {int dummy; } ;
struct aer_err_info {int error_dev_num; scalar_t__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct aer_err_info*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcie_device*,scalar_t__,struct aer_err_info*) ; 

__attribute__((used)) static inline void FUNC3(struct pcie_device *p_device,
			struct aer_err_info *e_info)
{
	int i;

	/* Report all before handle them, not to lost records by reset etc. */
	for (i = 0; i < e_info->error_dev_num && e_info->dev[i]; i++) {
		if (FUNC1(e_info->dev[i], e_info))
			FUNC0(e_info->dev[i], e_info);
	}
	for (i = 0; i < e_info->error_dev_num && e_info->dev[i]; i++) {
		if (FUNC1(e_info->dev[i], e_info))
			FUNC2(p_device, e_info->dev[i], e_info);
	}
}