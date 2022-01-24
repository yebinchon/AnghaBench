#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct client_init_ramrod_data {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  general; } ;
struct TYPE_3__ {int /*<<< orphan*/  pause_params; int /*<<< orphan*/  flags; int /*<<< orphan*/  rxq_params; int /*<<< orphan*/  txq_params; int /*<<< orphan*/  gen_params; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct bnx2x_queue_state_params {TYPE_2__ params; int /*<<< orphan*/  q_obj; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp,
				struct bnx2x_queue_state_params *cmd_params,
				struct client_init_ramrod_data *data)
{
	FUNC0(bp, cmd_params->q_obj,
				       &cmd_params->params.setup.gen_params,
				       &data->general,
				       &cmd_params->params.setup.flags);

	FUNC3(cmd_params->q_obj,
				  &cmd_params->params.setup.txq_params,
				  &data->tx,
				  &cmd_params->params.setup.flags);

	FUNC2(cmd_params->q_obj,
				  &cmd_params->params.setup.rxq_params,
				  &data->rx,
				  &cmd_params->params.setup.flags);

	FUNC1(cmd_params->q_obj,
				     &cmd_params->params.setup.pause_params,
				     &data->rx);
}