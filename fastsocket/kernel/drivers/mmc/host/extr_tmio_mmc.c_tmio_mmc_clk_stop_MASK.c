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
struct tmio_mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_CLK_AND_WAIT_CTL ; 
 int /*<<< orphan*/  CTL_SD_CARD_CLK_CTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tmio_mmc_host *host)
{
	FUNC2(host, CTL_CLK_AND_WAIT_CTL, 0x0000);
	FUNC0(10);
	FUNC2(host, CTL_SD_CARD_CLK_CTL, ~0x0100 &
		FUNC1(host, CTL_SD_CARD_CLK_CTL));
	FUNC0(10);
}