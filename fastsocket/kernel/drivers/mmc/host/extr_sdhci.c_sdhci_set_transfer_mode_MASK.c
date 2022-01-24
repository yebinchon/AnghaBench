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
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {int flags; int /*<<< orphan*/  data; } ;
struct mmc_data {int blocks; int flags; } ;

/* Variables and functions */
 int MMC_DATA_READ ; 
 int SDHCI_REQ_USE_DMA ; 
 int /*<<< orphan*/  SDHCI_TRANSFER_MODE ; 
 int /*<<< orphan*/  SDHCI_TRNS_BLK_CNT_EN ; 
 int /*<<< orphan*/  SDHCI_TRNS_DMA ; 
 int /*<<< orphan*/  SDHCI_TRNS_MULTI ; 
 int /*<<< orphan*/  SDHCI_TRNS_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host,
	struct mmc_data *data)
{
	u16 mode;

	if (data == NULL)
		return;

	FUNC0(!host->data);

	mode = SDHCI_TRNS_BLK_CNT_EN;
	if (data->blocks > 1)
		mode |= SDHCI_TRNS_MULTI;
	if (data->flags & MMC_DATA_READ)
		mode |= SDHCI_TRNS_READ;
	if (host->flags & SDHCI_REQ_USE_DMA)
		mode |= SDHCI_TRNS_DMA;

	FUNC1(host, mode, SDHCI_TRANSFER_MODE);
}