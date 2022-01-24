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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm {int dummy; } ;
struct iwl_host_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_mvm*,struct iwl_host_cmd*,int /*<<< orphan*/ *) ; 

int FUNC1(struct iwl_mvm *mvm, u8 id, u16 len,
				const void *data, u32 *status)
{
	struct iwl_host_cmd cmd = {
		.id = id,
		.len = len, 
		.data = data, 
	};

	return FUNC0(mvm, &cmd, status);
}