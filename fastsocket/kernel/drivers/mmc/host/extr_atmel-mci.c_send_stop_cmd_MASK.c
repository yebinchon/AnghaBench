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
struct mmc_data {int /*<<< orphan*/  stop; } ;
struct atmel_mci {int /*<<< orphan*/  stop_cmdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  MCI_CMDRDY ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct atmel_mci *host, struct mmc_data *data)
{
	FUNC0(host, data->stop, host->stop_cmdr);
	FUNC1(host, IER, MCI_CMDRDY);
}