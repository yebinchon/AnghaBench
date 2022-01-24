#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {void* size; void* subcommand; void* subcommand_length; void** buffer_address; void* buffer_length; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
struct sns_cmd_pkt {TYPE_2__ p; } ;
struct qla_hw_data {int /*<<< orphan*/  sns_cmd_dma; struct sns_cmd_pkt* sns_cmd; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sns_cmd_pkt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline struct sns_cmd_pkt *
FUNC5(scsi_qla_host_t *vha, uint16_t cmd, uint16_t scmd_len,
    uint16_t data_size)
{
	uint16_t		wc;
	struct sns_cmd_pkt	*sns_cmd;
	struct qla_hw_data *ha = vha->hw;

	sns_cmd = ha->sns_cmd;
	FUNC4(sns_cmd, 0, sizeof(struct sns_cmd_pkt));
	wc = data_size / 2;			/* Size in 16bit words. */
	sns_cmd->p.cmd.buffer_length = FUNC2(wc);
	sns_cmd->p.cmd.buffer_address[0] = FUNC3(FUNC0(ha->sns_cmd_dma));
	sns_cmd->p.cmd.buffer_address[1] = FUNC3(FUNC1(ha->sns_cmd_dma));
	sns_cmd->p.cmd.subcommand_length = FUNC2(scmd_len);
	sns_cmd->p.cmd.subcommand = FUNC2(cmd);
	wc = (data_size - 16) / 4;		/* Size in 32bit words. */
	sns_cmd->p.cmd.size = FUNC2(wc);

	return (sns_cmd);
}