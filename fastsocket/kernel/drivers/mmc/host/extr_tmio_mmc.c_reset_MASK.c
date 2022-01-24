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
 int /*<<< orphan*/  CTL_RESET_SD ; 
 int /*<<< orphan*/  CTL_RESET_SDIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tmio_mmc_host *host)
{
	/* FIXME - should we set stop clock reg here */
	FUNC1(host, CTL_RESET_SD, 0x0000);
	FUNC1(host, CTL_RESET_SDIO, 0x0000);
	FUNC0(10);
	FUNC1(host, CTL_RESET_SD, 0x0001);
	FUNC1(host, CTL_RESET_SDIO, 0x0001);
	FUNC0(10);
}