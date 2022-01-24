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
struct iwl_trans {TYPE_1__* ops; int /*<<< orphan*/  rx_mpdu_cmd; } ;
struct fw_img {int dummy; } ;
struct TYPE_2__ {int (* start_fw ) (struct iwl_trans*,struct fw_img const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct iwl_trans*,struct fw_img const*,int) ; 

__attribute__((used)) static inline int FUNC3(struct iwl_trans *trans,
				     const struct fw_img *fw,
				     bool run_in_rfkill)
{
	FUNC1();

	FUNC0(!trans->rx_mpdu_cmd);

	return trans->ops->start_fw(trans, fw, run_in_rfkill);
}