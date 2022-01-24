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
struct i2400m_bootrom_header {int /*<<< orphan*/  block_checksum; int /*<<< orphan*/  data_size; int /*<<< orphan*/  target_addr; } ;
struct i2400m {scalar_t__ boot_mode; scalar_t__ (* bus_bm_cmd_send ) (struct i2400m*,struct i2400m_bootrom_header const*,size_t,int) ;scalar_t__ (* bus_bm_wait_for_ack ) (struct i2400m*,struct i2400m_bootrom_header*,size_t) ;int /*<<< orphan*/  bm_cmd_buf; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOMEM ; 
 int I2400M_BM_CMD_RAW ; 
 scalar_t__ FUNC1 (struct i2400m*,int,struct i2400m_bootrom_header*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct i2400m_bootrom_header const*,size_t,struct i2400m_bootrom_header*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct i2400m_bootrom_header const*,size_t,struct i2400m_bootrom_header*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m_bootrom_header const*) ; 
 int FUNC7 (struct i2400m_bootrom_header const*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m_bootrom_header const*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m_bootrom_header const*) ; 
 struct device* FUNC10 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct i2400m_bootrom_header const*,size_t) ; 
 scalar_t__ FUNC12 (struct i2400m*,struct i2400m_bootrom_header const*,size_t,int) ; 
 scalar_t__ FUNC13 (struct i2400m*,struct i2400m_bootrom_header*,size_t) ; 

__attribute__((used)) static
ssize_t FUNC14(struct i2400m *i2400m,
		      const struct i2400m_bootrom_header *cmd, size_t cmd_size,
		      struct i2400m_bootrom_header *ack, size_t ack_size,
		      int flags)
{
	ssize_t result = -ENOMEM, rx_bytes;
	struct device *dev = FUNC10(i2400m);
	int opcode = cmd == NULL ? -1 : FUNC7(cmd);

	FUNC3(6, dev, "(i2400m %p cmd %p size %zu ack %p size %zu)\n",
		  i2400m, cmd, cmd_size, ack, ack_size);
	FUNC0(ack_size < sizeof(*ack));
	FUNC0(i2400m->boot_mode == 0);

	if (cmd != NULL) {		/* send the command */
		FUNC11(i2400m->bm_cmd_buf, cmd, cmd_size);
		result = i2400m->bus_bm_cmd_send(i2400m, cmd, cmd_size, flags);
		if (result < 0)
			goto error_cmd_send;
		if ((flags & I2400M_BM_CMD_RAW) == 0)
			FUNC4(5, dev,
				 "boot-mode cmd %d csum %u rr %u da %u: "
				 "addr 0x%04x size %u block csum 0x%04x\n",
				 opcode, FUNC9(cmd),
				 FUNC8(cmd),
				 FUNC6(cmd),
				 cmd->target_addr, cmd->data_size,
				 cmd->block_checksum);
	}
	result = i2400m->bus_bm_wait_for_ack(i2400m, ack, ack_size);
	if (result < 0) {
		FUNC5(dev, "boot-mode cmd %d: error waiting for an ack: %d\n",
			opcode, (int) result);	/* bah, %zd doesn't work */
		goto error_wait_for_ack;
	}
	rx_bytes = result;
	/* verify the ack and read more if neccessary [result is the
	 * final amount of bytes we get in the ack]  */
	result = FUNC1(i2400m, opcode, ack, ack_size, flags);
	if (result < 0)
		goto error_bad_ack;
	/* Don't you love this stack of empty targets? Well, I don't
	 * either, but it helps track exactly who comes in here and
	 * why :) */
	result = rx_bytes;
error_bad_ack:
error_wait_for_ack:
error_cmd_send:
	FUNC2(6, dev, "(i2400m %p cmd %p size %zu ack %p size %zu) = %d\n",
		i2400m, cmd, cmd_size, ack, ack_size, (int) result);
	return result;
}