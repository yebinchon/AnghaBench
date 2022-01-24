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
typedef  int /*<<< orphan*/  u32 ;
struct s3cmci_host {int sdio_irqen; int irq_state; scalar_t__ base; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_enabled; int /*<<< orphan*/  irq_disabled; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2410_SDICON ; 
 int /*<<< orphan*/  S3C2410_SDICON_SDIOIRQ ; 
 int /*<<< orphan*/  S3C2410_SDIIMSK_SDIOIRQ ; 
 int /*<<< orphan*/  FUNC0 (struct s3cmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s3cmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct s3cmci_host* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, int enable)
{
	struct s3cmci_host *host = FUNC6(mmc);
	unsigned long flags;
	u32 con;

	FUNC5(flags);

	con = FUNC7(host->base + S3C2410_SDICON);
	host->sdio_irqen = enable;

	if (enable == host->sdio_irqen)
		goto same_state;

	if (enable) {
		con |= S3C2410_SDICON_SDIOIRQ;
		FUNC2(host, S3C2410_SDIIMSK_SDIOIRQ);

		if (!host->irq_state && !host->irq_disabled) {
			host->irq_state = true;
			FUNC3(host->irq);
		}
	} else {
		FUNC0(host, S3C2410_SDIIMSK_SDIOIRQ);
		con &= ~S3C2410_SDICON_SDIOIRQ;

		if (!host->irq_enabled && host->irq_state) {
			FUNC1(host->irq);
			host->irq_state = false;
		}
	}

	FUNC9(con, host->base + S3C2410_SDICON);

 same_state:
	FUNC4(flags);

	FUNC8(host);
}