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
typedef  int u8 ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  addr_len; } ;
struct i2400m_bootrom_header {void* data_size; void* target_addr; int /*<<< orphan*/  command; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {int bus_bm_mac_addr_impaired; struct i2400m_bootrom_header* bm_cmd_buf; TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ack_buf ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  I2400M_BRH_READ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int FUNC6 (struct i2400m*,struct i2400m_bootrom_header*,int,struct i2400m_bootrom_header*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct device* FUNC8 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int FUNC10(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC8(i2400m);
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	struct i2400m_bootrom_header *cmd;
	struct {
		struct i2400m_bootrom_header ack;
		u8 ack_pl[16];
	} __attribute__((packed)) ack_buf;

	FUNC2(5, dev, "(i2400m %p)\n", i2400m);
	cmd = i2400m->bm_cmd_buf;
	cmd->command = FUNC7(I2400M_BRH_READ, 0, 1);
	cmd->target_addr = FUNC0(0x00203fe8);
	cmd->data_size = FUNC0(6);
	result = FUNC6(i2400m, cmd, sizeof(*cmd),
			       &ack_buf.ack, sizeof(ack_buf), 0);
	if (result < 0) {
		FUNC4(dev, "BM: read mac addr failed: %d\n", result);
		goto error_read_mac;
	}
	FUNC3(2, dev,
		 "mac addr is %02x:%02x:%02x:%02x:%02x:%02x\n",
		 ack_buf.ack_pl[0], ack_buf.ack_pl[1],
		 ack_buf.ack_pl[2], ack_buf.ack_pl[3],
		 ack_buf.ack_pl[4], ack_buf.ack_pl[5]);
	if (i2400m->bus_bm_mac_addr_impaired == 1) {
		ack_buf.ack_pl[0] = 0x00;
		ack_buf.ack_pl[1] = 0x16;
		ack_buf.ack_pl[2] = 0xd3;
		FUNC5(&ack_buf.ack_pl[3], 3);
		FUNC4(dev, "BM is MAC addr impaired, faking MAC addr to "
			"mac addr is %02x:%02x:%02x:%02x:%02x:%02x\n",
			ack_buf.ack_pl[0], ack_buf.ack_pl[1],
			ack_buf.ack_pl[2], ack_buf.ack_pl[3],
			ack_buf.ack_pl[4], ack_buf.ack_pl[5]);
		result = 0;
	}
	net_dev->addr_len = ETH_ALEN;
	FUNC9(net_dev->perm_addr, ack_buf.ack_pl, ETH_ALEN);
	FUNC9(net_dev->dev_addr, ack_buf.ack_pl, ETH_ALEN);
error_read_mac:
	FUNC1(5, dev, "(i2400m %p) = %d\n", i2400m, result);
	return result;
}