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
struct rsxx_cardinfo {int /*<<< orphan*/  config; } ;
struct TYPE_2__ {scalar_t__ version; int /*<<< orphan*/  crc; } ;
struct rsxx_card_cfg {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  CREG_ADD_CONFIG ; 
 int EINVAL ; 
 scalar_t__ RSXX_CFG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (struct rsxx_card_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsxx_card_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsxx_card_cfg*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rsxx_card_cfg*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct rsxx_cardinfo*,int /*<<< orphan*/ ,int,struct rsxx_card_cfg*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct rsxx_cardinfo *card)
{
	struct rsxx_card_cfg cfg;
	int st;

	FUNC6(&cfg, &card->config, sizeof(cfg));

	if (FUNC8(cfg.hdr.version != RSXX_CFG_VERSION)) {
		FUNC5(FUNC0(card),
			"Cannot save config with invalid version %d\n",
			cfg.hdr.version);
		return -EINVAL;
	}

	/* Convert data to little endian for the CRC calculation. */
	FUNC1(&cfg);

	cfg.hdr.crc = FUNC2(&cfg);

	/*
	 * Swap the data from little endian to big endian so it can be
	 * stored.
	 */
	FUNC3(&cfg);
	FUNC4(&cfg.hdr);

	st = FUNC7(card, CREG_ADD_CONFIG, sizeof(cfg), &cfg, 1);
	if (st)
		return st;

	return 0;
}