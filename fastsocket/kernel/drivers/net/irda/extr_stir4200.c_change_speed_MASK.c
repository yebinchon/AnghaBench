#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stir_cb {unsigned int speed; TYPE_1__* netdev; } ;
typedef  int __u8 ;
struct TYPE_5__ {unsigned int speed; int pdclk; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int CTRL1_SDMODE ; 
 int CTRL1_SRESET ; 
 int EINVAL ; 
 int MODE_2400 ; 
 int MODE_FASTRX ; 
 int MODE_FFRSTEN ; 
 int MODE_FIR ; 
 int MODE_NRESET ; 
 int MODE_SIR ; 
 int /*<<< orphan*/  REG_CTRL1 ; 
 int /*<<< orphan*/  REG_CTRL2 ; 
 int /*<<< orphan*/  REG_DPLL ; 
 int /*<<< orphan*/  REG_MODE ; 
 int /*<<< orphan*/  REG_PDCLK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 
 int rx_sensitivity ; 
 TYPE_2__* stir_modes ; 
 int tx_power ; 
 int FUNC4 (struct stir_cb*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct stir_cb *stir, unsigned speed)
{
	int i, err;
	__u8 mode;

	for (i = 0; i < FUNC0(stir_modes); ++i) {
		if (speed == stir_modes[i].speed)
			goto found;
	}

	FUNC1(&stir->netdev->dev, "invalid speed %d\n", speed);
	return -EINVAL;

 found:
	FUNC3("speed change from %d to %d\n", stir->speed, speed);

	/* Reset modulator */
	err = FUNC4(stir, REG_CTRL1, CTRL1_SRESET);
	if (err)
		goto out;

	/* Undocumented magic to tweak the DPLL */
	err = FUNC4(stir, REG_DPLL, 0x15);
	if (err)
		goto out;

	/* Set clock */
	err = FUNC4(stir, REG_PDCLK, stir_modes[i].pdclk);
	if (err)
		goto out;

	mode = MODE_NRESET | MODE_FASTRX;
	if (FUNC2(speed))
		mode |= MODE_FIR | MODE_FFRSTEN;
	else
		mode |= MODE_SIR;

	if (speed == 2400)
		mode |= MODE_2400;

	err = FUNC4(stir, REG_MODE, mode);
	if (err)
		goto out;

	/* This resets TEMIC style transceiver if any. */
	err = FUNC4(stir, REG_CTRL1,
			CTRL1_SDMODE | (tx_power & 3) << 1);
	if (err)
		goto out;

	err = FUNC4(stir, REG_CTRL1, (tx_power & 3) << 1);
	if (err)
		goto out;

	/* Reset sensitivity */
	err = FUNC4(stir, REG_CTRL2, (rx_sensitivity & 7) << 5);
 out:
	stir->speed = speed;
	return err;
}