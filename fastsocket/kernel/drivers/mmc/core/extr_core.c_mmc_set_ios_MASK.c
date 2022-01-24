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
struct mmc_ios {int /*<<< orphan*/  timing; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  vdd; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  power_mode; int /*<<< orphan*/  bus_mode; int /*<<< orphan*/  clock; } ;
struct mmc_host {TYPE_1__* ops; struct mmc_ios ios; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_ios ) (struct mmc_host*,struct mmc_ios*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_ios*) ; 

__attribute__((used)) static inline void FUNC3(struct mmc_host *host)
{
	struct mmc_ios *ios = &host->ios;

	FUNC1("%s: clock %uHz busmode %u powermode %u cs %u Vdd %u "
		"width %u timing %u\n",
		 FUNC0(host), ios->clock, ios->bus_mode,
		 ios->power_mode, ios->chip_select, ios->vdd,
		 ios->bus_width, ios->timing);

	host->ops->set_ios(host, ios);
}