#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int start; int end; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {void** head; } ;
struct i2o_message {void** body; TYPE_3__ u; } ;
struct TYPE_7__ {TYPE_4__* virt; } ;
struct i2o_controller {int mem_alloc; int io_alloc; int unit; int /*<<< orphan*/  name; TYPE_5__* pdev; struct resource io_resource; struct resource mem_resource; TYPE_1__ status_block; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int current_mem_size; int desired_mem_size; int current_mem_base; int current_io_size; int desired_io_size; int current_io_base; } ;
typedef  TYPE_4__ i2o_status_block ;
struct TYPE_12__ {int phys; int len; int /*<<< orphan*/  virt; } ;
struct TYPE_11__ {TYPE_2__* bus; struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ADAPTER_TID ; 
 int ENOMEM ; 
 int HOST_TID ; 
 int I2O_CMD_SYS_TAB_SET ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct i2o_message*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int FUNC2 (struct i2o_message*) ; 
 int SGL_OFFSET_6 ; 
 scalar_t__ FUNC3 (struct resource*,struct resource*,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct i2o_message* FUNC7 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2o_controller*,struct i2o_message*) ; 
 int FUNC9 (struct i2o_controller*,struct i2o_message*,int) ; 
 TYPE_6__ i2o_systab ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (TYPE_5__*,struct resource*) ; 

__attribute__((used)) static int FUNC15(struct i2o_controller *c)
{
	struct i2o_message *msg;
	i2o_status_block *sb = c->status_block.virt;
	struct device *dev = &c->pdev->dev;
	struct resource *root;
	int rc;

	if (sb->current_mem_size < sb->desired_mem_size) {
		struct resource *res = &c->mem_resource;
		res->name = c->pdev->bus->name;
		res->flags = IORESOURCE_MEM;
		res->start = 0;
		res->end = 0;
		FUNC12("%s: requires private memory resources.\n", c->name);
		root = FUNC14(c->pdev, res);
		if (root == NULL)
			FUNC13("%s: Can't find parent resource!\n", c->name);
		if (root && FUNC3(root, res, sb->desired_mem_size, sb->desired_mem_size, sb->desired_mem_size, 1 << 20,	/* Unspecified, so use 1Mb and play safe */
					      NULL, NULL) >= 0) {
			c->mem_alloc = 1;
			sb->current_mem_size = 1 + res->end - res->start;
			sb->current_mem_base = res->start;
			FUNC12("%s: allocated %llu bytes of PCI memory at "
				"0x%016llX.\n", c->name,
				(unsigned long long)(1 + res->end - res->start),
				(unsigned long long)res->start);
		}
	}

	if (sb->current_io_size < sb->desired_io_size) {
		struct resource *res = &c->io_resource;
		res->name = c->pdev->bus->name;
		res->flags = IORESOURCE_IO;
		res->start = 0;
		res->end = 0;
		FUNC12("%s: requires private memory resources.\n", c->name);
		root = FUNC14(c->pdev, res);
		if (root == NULL)
			FUNC13("%s: Can't find parent resource!\n", c->name);
		if (root && FUNC3(root, res, sb->desired_io_size, sb->desired_io_size, sb->desired_io_size, 1 << 20,	/* Unspecified, so use 1Mb and play safe */
					      NULL, NULL) >= 0) {
			c->io_alloc = 1;
			sb->current_io_size = 1 + res->end - res->start;
			sb->current_mem_base = res->start;
			FUNC12("%s: allocated %llu bytes of PCI I/O at "
				"0x%016llX.\n", c->name,
				(unsigned long long)(1 + res->end - res->start),
				(unsigned long long)res->start);
		}
	}

	msg = FUNC7(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC1(msg))
		return FUNC2(msg);

	i2o_systab.phys = FUNC5(dev, i2o_systab.virt, i2o_systab.len,
					 PCI_DMA_TODEVICE);
	if (!i2o_systab.phys) {
		FUNC8(c, msg);
		return -ENOMEM;
	}

	msg->u.head[0] = FUNC4(FUNC0(12) | SGL_OFFSET_6);
	msg->u.head[1] =
	    FUNC4(I2O_CMD_SYS_TAB_SET << 24 | HOST_TID << 12 |
			ADAPTER_TID);

	/*
	 * Provide three SGL-elements:
	 * System table (SysTab), Private memory space declaration and
	 * Private i/o space declaration
	 */

	msg->body[0] = FUNC4(c->unit + 2);
	msg->body[1] = FUNC4(0x00000000);
	msg->body[2] = FUNC4(0x54000000 | i2o_systab.len);
	msg->body[3] = FUNC4(i2o_systab.phys);
	msg->body[4] = FUNC4(0x54000000 | sb->current_mem_size);
	msg->body[5] = FUNC4(sb->current_mem_base);
	msg->body[6] = FUNC4(0xd4000000 | sb->current_io_size);
	msg->body[6] = FUNC4(sb->current_io_base);

	rc = FUNC9(c, msg, 120);

	FUNC6(dev, i2o_systab.phys, i2o_systab.len,
			 PCI_DMA_TODEVICE);

	if (rc < 0)
		FUNC11("%s: Unable to set SysTab (status=%#x).\n", c->name,
			-rc);
	else
		FUNC10("%s: SysTab set.\n", c->name);

	return rc;
}