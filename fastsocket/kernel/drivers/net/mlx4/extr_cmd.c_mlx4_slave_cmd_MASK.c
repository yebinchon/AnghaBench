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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct mlx4_vhcr_cmd {int flags; void* status; void* out_param; void* token; void* opcode; int /*<<< orphan*/  in_modifier; void* in_param; } ;
struct TYPE_6__ {int /*<<< orphan*/  slave_cmd_mutex; int /*<<< orphan*/  use_events; } ;
struct TYPE_4__ {struct mlx4_vhcr_cmd* vhcr; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_1__ mfunc; } ;
struct TYPE_5__ {int /*<<< orphan*/  function; } ;
struct mlx4_dev {TYPE_2__ caps; } ;

/* Variables and functions */
 int CMD_POLL_TOKEN ; 
 void* CMD_STAT_BAD_PARAM ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_VHCR_POST ; 
 scalar_t__ MLX4_COMM_TIME ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,int) ; 
 scalar_t__ FUNC6 (struct mlx4_dev*) ; 
 int FUNC7 (struct mlx4_dev*,int /*<<< orphan*/ ,struct mlx4_vhcr_cmd*) ; 
 struct mlx4_priv* FUNC8 (struct mlx4_dev*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
			  int out_is_imm, u32 in_modifier, u8 op_modifier,
			  u16 op, unsigned long timeout)
{
	struct mlx4_priv *priv = FUNC8(dev);
	struct mlx4_vhcr_cmd *vhcr = priv->mfunc.vhcr;
	int ret;

	FUNC10(&priv->cmd.slave_cmd_mutex);

	vhcr->in_param = FUNC3(in_param);
	vhcr->out_param = out_param ? FUNC3(*out_param) : 0;
	vhcr->in_modifier = FUNC2(in_modifier);
	vhcr->opcode = FUNC1((((u16) op_modifier) << 12) | (op & 0xfff));
	vhcr->token = FUNC1(CMD_POLL_TOKEN);
	vhcr->status = 0;
	vhcr->flags = !!(priv->cmd.use_events) << 6;

	if (FUNC6(dev)) {
		ret = FUNC7(dev, dev->caps.function, vhcr);
		if (!ret) {
			if (out_is_imm) {
				if (out_param)
					*out_param =
						FUNC0(vhcr->out_param);
				else {
					FUNC5(dev, "response expected while"
						 "output mailbox is NULL for "
						 "command 0x%x\n", op);
					vhcr->status = CMD_STAT_BAD_PARAM;
				}
			}
			ret = FUNC9(vhcr->status);
		}
	} else {
		ret = FUNC4(dev, MLX4_COMM_CMD_VHCR_POST, 0,
				    MLX4_COMM_TIME + timeout);
		if (!ret) {
			if (out_is_imm) {
				if (out_param)
					*out_param =
						FUNC0(vhcr->out_param);
				else {
					FUNC5(dev, "response expected while"
						 "output mailbox is NULL for "
						 "command 0x%x\n", op);
					vhcr->status = CMD_STAT_BAD_PARAM;
				}
			}
			ret = FUNC9(vhcr->status);
		} else
			FUNC5(dev, "failed execution of VHCR_POST command"
				 "opcode 0x%x\n", op);
	}

	FUNC11(&priv->cmd.slave_cmd_mutex);
	return ret;
}