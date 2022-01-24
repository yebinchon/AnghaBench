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
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_TIMING_SD_HS ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mmc_card *card)
{
	FUNC0(card);
	FUNC1(card->host, MMC_TIMING_SD_HS);
}