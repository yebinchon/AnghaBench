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
typedef  unsigned int u8 ;
typedef  int /*<<< orphan*/  tx ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct mcp23s08_driver_data {struct mcp23s08** mcp; } ;
struct TYPE_2__ {char* label; unsigned int base; int ngpio; int can_sleep; int /*<<< orphan*/  owner; int /*<<< orphan*/ * dev; int /*<<< orphan*/  dbg_show; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; } ;
struct mcp23s08 {int addr; scalar_t__* cache; TYPE_1__ chip; struct spi_device* spi; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int IOCON_HAEN ; 
 int IOCON_SEQOP ; 
 size_t MCP_GPINTEN ; 
 int /*<<< orphan*/  MCP_GPPU ; 
 int /*<<< orphan*/  MCP_IOCON ; 
 size_t MCP_IPOL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  mcp23s08_dbg_show ; 
 int /*<<< orphan*/  mcp23s08_direction_input ; 
 int /*<<< orphan*/  mcp23s08_direction_output ; 
 int /*<<< orphan*/  mcp23s08_get ; 
 int FUNC2 (struct mcp23s08*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mcp23s08*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  mcp23s08_set ; 
 int FUNC4 (struct mcp23s08*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mcp23s08_driver_data* FUNC7 (struct spi_device*) ; 
 int FUNC8 (struct spi_device*,unsigned int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi, unsigned addr,
		unsigned base, unsigned pullups)
{
	struct mcp23s08_driver_data	*data = FUNC7(spi);
	struct mcp23s08			*mcp = data->mcp[addr];
	int				status;
	int				do_update = 0;

	FUNC6(&mcp->lock);

	mcp->spi = spi;
	mcp->addr = 0x40 | (addr << 1);

	mcp->chip.label = "mcp23s08",

	mcp->chip.direction_input = mcp23s08_direction_input;
	mcp->chip.get = mcp23s08_get;
	mcp->chip.direction_output = mcp23s08_direction_output;
	mcp->chip.set = mcp23s08_set;
	mcp->chip.dbg_show = mcp23s08_dbg_show;

	mcp->chip.base = base;
	mcp->chip.ngpio = 8;
	mcp->chip.can_sleep = 1;
	mcp->chip.dev = &spi->dev;
	mcp->chip.owner = THIS_MODULE;

	/* verify MCP_IOCON.SEQOP = 0, so sequential reads work,
	 * and MCP_IOCON.HAEN = 1, so we work with all chips.
	 */
	status = FUNC2(mcp, MCP_IOCON);
	if (status < 0)
		goto fail;
	if ((status & IOCON_SEQOP) || !(status & IOCON_HAEN)) {
		status &= ~IOCON_SEQOP;
		status |= IOCON_HAEN;
		status = FUNC4(mcp, MCP_IOCON, (u8) status);
		if (status < 0)
			goto fail;
	}

	/* configure ~100K pullups */
	status = FUNC4(mcp, MCP_GPPU, pullups);
	if (status < 0)
		goto fail;

	status = FUNC3(mcp, 0, mcp->cache, sizeof mcp->cache);
	if (status < 0)
		goto fail;

	/* disable inverter on input */
	if (mcp->cache[MCP_IPOL] != 0) {
		mcp->cache[MCP_IPOL] = 0;
		do_update = 1;
	}

	/* disable irqs */
	if (mcp->cache[MCP_GPINTEN] != 0) {
		mcp->cache[MCP_GPINTEN] = 0;
		do_update = 1;
	}

	if (do_update) {
		u8 tx[4];

		tx[0] = mcp->addr;
		tx[1] = MCP_IPOL;
		FUNC5(&tx[2], &mcp->cache[MCP_IPOL], sizeof(tx) - 2);
		status = FUNC8(mcp->spi, tx, sizeof tx, NULL, 0);
		if (status < 0)
			goto fail;
	}

	status = FUNC1(&mcp->chip);
fail:
	if (status < 0)
		FUNC0(&spi->dev, "can't setup chip %d, --> %d\n",
				addr, status);
	return status;
}