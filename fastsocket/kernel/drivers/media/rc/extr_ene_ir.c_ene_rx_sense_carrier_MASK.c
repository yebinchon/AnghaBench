#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ene_device {int /*<<< orphan*/  rdev; scalar_t__ carrier_detect_enabled; } ;
struct TYPE_4__ {int carrier_report; int carrier; int duty_cycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  ENE_CIRCAR_HPRD ; 
 int /*<<< orphan*/  ENE_CIRCAR_PRD ; 
 int ENE_CIRCAR_PRD_VALID ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (struct ene_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__ ev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC4(struct ene_device *dev)
{
	FUNC0(ev);

	int carrier, duty_cycle;
	int period = FUNC2(dev, ENE_CIRCAR_PRD);
	int hperiod = FUNC2(dev, ENE_CIRCAR_HPRD);

	if (!(period & ENE_CIRCAR_PRD_VALID))
		return;

	period &= ~ENE_CIRCAR_PRD_VALID;

	if (!period)
		return;

	FUNC1("RX: hardware carrier period = %02x", period);
	FUNC1("RX: hardware carrier pulse period = %02x", hperiod);

	carrier = 2000000 / period;
	duty_cycle = (hperiod * 100) / period;
	FUNC1("RX: sensed carrier = %d Hz, duty cycle %d%%",
						carrier, duty_cycle);
	if (dev->carrier_detect_enabled) {
		ev.carrier_report = true;
		ev.carrier = carrier;
		ev.duty_cycle = duty_cycle;
		FUNC3(dev->rdev, &ev);
	}
}