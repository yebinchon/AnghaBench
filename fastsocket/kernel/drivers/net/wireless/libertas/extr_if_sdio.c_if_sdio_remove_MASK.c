#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {int dummy; } ;
struct if_sdio_packet {scalar_t__ model; struct if_sdio_packet* next; struct if_sdio_packet* packets; int /*<<< orphan*/  workqueue; TYPE_1__* priv; } ;
struct if_sdio_card {scalar_t__ model; struct if_sdio_card* next; struct if_sdio_card* packets; int /*<<< orphan*/  workqueue; TYPE_1__* priv; } ;
struct cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int surpriseremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FUNC_SHUTDOWN ; 
 scalar_t__ IF_SDIO_MODEL_8688 ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct cmd_header*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct if_sdio_packet*) ; 
 int /*<<< orphan*/  lbs_cmd_copyback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct cmd_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdio_func*) ; 
 struct if_sdio_packet* FUNC13 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC15 (struct sdio_func*) ; 
 scalar_t__ user_rmmod ; 

__attribute__((used)) static void FUNC16(struct sdio_func *func)
{
	struct if_sdio_card *card;
	struct if_sdio_packet *packet;

	FUNC4(LBS_DEB_SDIO);

	card = FUNC13(func);

	if (user_rmmod && (card->model == IF_SDIO_MODEL_8688)) {
		/*
		 * FUNC_SHUTDOWN is required for SD8688 WLAN/BT
		 * multiple functions
		 */
		struct cmd_header cmd;

		FUNC10(&cmd, 0, sizeof(cmd));

		FUNC6("send function SHUTDOWN command\n");
		if (FUNC0(card->priv, CMD_FUNC_SHUTDOWN,
				&cmd, sizeof(cmd), lbs_cmd_copyback,
				(unsigned long) &cmd))
			FUNC7("CMD_FUNC_SHUTDOWN cmd failed\n");
	}


	FUNC6("call remove card\n");
	FUNC9(card->priv);
	FUNC8(card->priv);
	card->priv->surpriseremoved = 1;

	FUNC2(card->workqueue);
	FUNC1(card->workqueue);

	FUNC11(func);
	FUNC15(func);
	FUNC12(func);
	FUNC14(func);

	while (card->packets) {
		packet = card->packets;
		card->packets = card->packets->next;
		FUNC3(packet);
	}

	FUNC3(card);

	FUNC5(LBS_DEB_SDIO);
}