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
struct pmcmsptwi_data {int /*<<< orphan*/  lock; scalar_t__ iobase; } ;
struct pmcmsptwi_clockcfg {int /*<<< orphan*/  highspeed; int /*<<< orphan*/  standard; } ;

/* Variables and functions */
 scalar_t__ MSP_TWI_HS_CLK_REG_OFFSET ; 
 scalar_t__ MSP_TWI_SF_CLK_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(const struct pmcmsptwi_clockcfg *cfg,
					struct pmcmsptwi_data *data)
{
	FUNC0(&data->lock);
	FUNC3(FUNC2(&cfg->standard),
				data->iobase + MSP_TWI_SF_CLK_REG_OFFSET);
	FUNC3(FUNC2(&cfg->highspeed),
				data->iobase + MSP_TWI_HS_CLK_REG_OFFSET);
	FUNC1(&data->lock);
}