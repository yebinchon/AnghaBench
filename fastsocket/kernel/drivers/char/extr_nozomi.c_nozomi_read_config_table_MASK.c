#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ enabled; int /*<<< orphan*/  diag_dl; int /*<<< orphan*/  mdm_dl; int /*<<< orphan*/  mdm_ul; } ;
struct TYPE_7__ {scalar_t__ signature; scalar_t__ version; TYPE_1__ toggle; } ;
struct nozomi {int last_ier; int /*<<< orphan*/  reg_fcr; TYPE_4__* port; TYPE_3__ config_table; TYPE_2__* pdev; int /*<<< orphan*/  state; int /*<<< orphan*/  reg_ier; scalar_t__ base_addr; } ;
struct ctrl_ul {int dummy; } ;
struct ctrl_dl {int dummy; } ;
struct config_table {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ul_addr; int /*<<< orphan*/  ctrl_ul; int /*<<< orphan*/  ctrl_dl; int /*<<< orphan*/  fifo_ul; int /*<<< orphan*/  toggle_dl; int /*<<< orphan*/  toggle_ul; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t CH_A ; 
 size_t CH_B ; 
 scalar_t__ CONFIG_MAGIC ; 
 int CTRL_DL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DIAG_DL ; 
 int /*<<< orphan*/  FIFO_BUFFER_SIZE_UL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_PORT ; 
 int MDM_DL ; 
 int MDM_UL ; 
 int /*<<< orphan*/  NOZOMI_STATE_ALLOCATED ; 
 size_t PORT_DIAG ; 
 size_t PORT_MDM ; 
 scalar_t__ TOGGLE_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nozomi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nozomi*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct nozomi *dc)
{
	FUNC6((u32 *) &dc->config_table, dc->base_addr + 0,
						sizeof(struct config_table));

	if (dc->config_table.signature != CONFIG_MAGIC) {
		FUNC1(&dc->pdev->dev, "ConfigTable Bad! 0x%08X != 0x%08X\n",
			dc->config_table.signature, CONFIG_MAGIC);
		return 0;
	}

	if ((dc->config_table.version == 0)
	    || (dc->config_table.toggle.enabled == TOGGLE_VALID)) {
		int i;
		FUNC0("Second phase, configuring card");

		FUNC7(dc);

		dc->port[PORT_MDM].toggle_ul = dc->config_table.toggle.mdm_ul;
		dc->port[PORT_MDM].toggle_dl = dc->config_table.toggle.mdm_dl;
		dc->port[PORT_DIAG].toggle_dl = dc->config_table.toggle.diag_dl;
		FUNC0("toggle ports: MDM UL:%d MDM DL:%d, DIAG DL:%d",
		   dc->port[PORT_MDM].toggle_ul,
		   dc->port[PORT_MDM].toggle_dl, dc->port[PORT_DIAG].toggle_dl);

		FUNC3(dc);

		for (i = PORT_MDM; i < MAX_PORT; i++) {
			dc->port[i].fifo_ul =
			    FUNC4(FIFO_BUFFER_SIZE_UL, GFP_ATOMIC, NULL);
			FUNC5(&dc->port[i].ctrl_dl, 0, sizeof(struct ctrl_dl));
			FUNC5(&dc->port[i].ctrl_ul, 0, sizeof(struct ctrl_ul));
		}

		/* Enable control channel */
		dc->last_ier = dc->last_ier | CTRL_DL;
		FUNC9(dc->last_ier, dc->reg_ier);

		dc->state = NOZOMI_STATE_ALLOCATED;
		FUNC2(&dc->pdev->dev, "Initialization OK!\n");
		return 1;
	}

	if ((dc->config_table.version > 0)
	    && (dc->config_table.toggle.enabled != TOGGLE_VALID)) {
		u32 offset = 0;
		FUNC0("First phase: pushing upload buffers, clearing download");

		FUNC2(&dc->pdev->dev, "Version of card: %d\n",
			 dc->config_table.version);

		/* Here we should disable all I/O over F32. */
		FUNC7(dc);

		/*
		 * We should send ALL channel pair tokens back along
		 * with reset token
		 */

		/* push upload modem buffers */
		FUNC8(dc->port[PORT_MDM].ul_addr[CH_A],
			(u32 *) &offset, 4);
		FUNC8(dc->port[PORT_MDM].ul_addr[CH_B],
			(u32 *) &offset, 4);

		FUNC9(MDM_UL | DIAG_DL | MDM_DL, dc->reg_fcr);

		FUNC0("First phase done");
	}

	return 1;
}