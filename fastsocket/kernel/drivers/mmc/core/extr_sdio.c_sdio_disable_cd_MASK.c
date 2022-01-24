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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  disable_cd; } ;
struct mmc_card {TYPE_1__ cccr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDIO_BUS_CD_DISABLE ; 
 int /*<<< orphan*/  SDIO_CCCR_IF ; 
 int FUNC0 (struct mmc_card*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct mmc_card *card)
{
	int ret;
	u8 ctrl;

	if (!card->cccr.disable_cd)
		return 0;

	ret = FUNC0(card, 0, 0, SDIO_CCCR_IF, 0, &ctrl);
	if (ret)
		return ret;

	ctrl |= SDIO_BUS_CD_DISABLE;

	return FUNC0(card, 1, 0, SDIO_CCCR_IF, ctrl, NULL);
}