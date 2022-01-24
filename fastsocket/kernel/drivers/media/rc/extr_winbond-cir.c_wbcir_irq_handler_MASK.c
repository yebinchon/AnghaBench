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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int pulse; scalar_t__ duration; } ;
struct wbcir_data {int irdata_error; int irdata_active; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  dev; int /*<<< orphan*/  rxtrigger; scalar_t__ sbase; TYPE_1__ ev; } ;
struct pnp_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  WBCIR_BANK_0 ; 
 int WBCIR_IRQ_ERR ; 
 int WBCIR_IRQ_RX ; 
 scalar_t__ WBCIR_REG_SP3_ASCR ; 
 scalar_t__ WBCIR_REG_SP3_EIR ; 
 scalar_t__ WBCIR_REG_SP3_LSR ; 
 scalar_t__ WBCIR_REG_SP3_RXDATA ; 
 int WBCIR_RX_AVAIL ; 
 int /*<<< orphan*/  WBCIR_RX_DISABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct wbcir_data* FUNC7 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct wbcir_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC11(int irqno, void *cookie)
{
	struct pnp_dev *device = cookie;
	struct wbcir_data *data = FUNC7(device);
	unsigned long flags;
	u8 irdata[8];
	u8 disable = true;
	u8 status;
	int i;

	FUNC8(&data->spinlock, flags);

	FUNC10(data, WBCIR_BANK_0);

	status = FUNC0(data->sbase + WBCIR_REG_SP3_EIR);

	if (!(status & (WBCIR_IRQ_RX | WBCIR_IRQ_ERR))) {
		FUNC9(&data->spinlock, flags);
		return IRQ_NONE;
	}

	/* Check for e.g. buffer overflow */
	if (status & WBCIR_IRQ_ERR) {
		data->irdata_error = true;
		FUNC3(data->dev);
	}

	if (!(status & WBCIR_IRQ_RX))
		goto out;

	if (!data->irdata_active) {
		data->irdata_active = true;
		FUNC5(data->rxtrigger, LED_FULL);
	}

	/* Since RXHDLEV is set, at least 8 bytes are in the FIFO */
	FUNC1(data->sbase + WBCIR_REG_SP3_RXDATA, &irdata[0], 8);

	for (i = 0; i < 8; i++) {
		u8 pulse;
		u32 duration;

		if (irdata[i] != 0xFF && irdata[i] != 0x00)
			disable = false;

		if (data->irdata_error)
			continue;

		pulse = irdata[i] & 0x80 ? false : true;
		duration = (irdata[i] & 0x7F) * 10000; /* ns */

		if (data->ev.pulse != pulse) {
			if (data->ev.duration != 0) {
				FUNC4(data->dev, &data->ev);
				data->ev.duration = 0;
			}

			data->ev.pulse = pulse;
		}

		data->ev.duration += duration;
	}

	if (disable) {
		if (data->ev.duration != 0 && !data->irdata_error) {
			FUNC4(data->dev, &data->ev);
			data->ev.duration = 0;
		}

		/* Set RXINACTIVE */
		FUNC6(WBCIR_RX_DISABLE, data->sbase + WBCIR_REG_SP3_ASCR);

		/* Drain the FIFO */
		while (FUNC0(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_AVAIL)
			FUNC0(data->sbase + WBCIR_REG_SP3_RXDATA);

		FUNC3(data->dev);
		data->irdata_error = false;
		data->irdata_active = false;
		FUNC5(data->rxtrigger, LED_OFF);
	}

	FUNC2(data->dev);

out:
	FUNC9(&data->spinlock, flags);
	return IRQ_HANDLED;
}