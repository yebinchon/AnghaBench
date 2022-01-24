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
typedef  size_t u8 ;
struct iwl_trans_pcie {char const** command_names; } ;

/* Variables and functions */

__attribute__((used)) static inline const char *FUNC0(struct iwl_trans_pcie *trans_pcie,
					 u8 cmd)
{
	if (!trans_pcie->command_names || !trans_pcie->command_names[cmd])
		return "UNKNOWN";
	return trans_pcie->command_names[cmd];
}