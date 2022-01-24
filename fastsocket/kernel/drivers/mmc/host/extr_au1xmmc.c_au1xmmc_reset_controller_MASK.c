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
struct au1xmmc_host {int dummy; } ;

/* Variables and functions */
 int AU1XMMC_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xmmc_host*) ; 
 int SD_CONFIG2_EN ; 
 int SD_CONFIG2_FF ; 
 int SD_ENABLE_CE ; 
 int SD_ENABLE_R ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct au1xmmc_host *host)
{
	/* Apply the clock */
	FUNC8(SD_ENABLE_CE, FUNC3(host));
        FUNC7(1);

	FUNC8(SD_ENABLE_R | SD_ENABLE_CE, FUNC3(host));
	FUNC7(5);

	FUNC8(~0, FUNC4(host));
	FUNC6();

	FUNC8(0, FUNC0(host));
	FUNC8(0x001fffff, FUNC5(host));
	FUNC6();

	FUNC8(SD_CONFIG2_EN, FUNC2(host));
        FUNC6();

	FUNC8(SD_CONFIG2_EN | SD_CONFIG2_FF, FUNC2(host));
	FUNC7(1);

	FUNC8(SD_CONFIG2_EN, FUNC2(host));
	FUNC6();

	/* Configure interrupts */
	FUNC8(AU1XMMC_INTERRUPTS, FUNC1(host));
	FUNC6();
}