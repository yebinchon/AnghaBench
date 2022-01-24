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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_nvm_access_cmd {void* type; void* length; void* offset; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct iwl_nvm_access_cmd *cmd,
				     u16 offset, u16 length, u16 section)
{
	cmd->offset = FUNC0(offset);
	cmd->length = FUNC0(length);
	cmd->type = FUNC0(section);
}