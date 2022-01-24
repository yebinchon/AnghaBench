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
typedef  int u8 ;
struct wbcir_data {int irdata_error; scalar_t__ idle_count; int irdata_count; int /*<<< orphan*/ * irdata; scalar_t__ sbase; } ;
struct device {int dummy; } ;
struct pnp_dev {struct device dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  irdata ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
#define  IR_PROTOCOL_NEC 130 
#define  IR_PROTOCOL_RC5 129 
#define  IR_PROTOCOL_RC6 128 
 int /*<<< orphan*/  WBCIR_BANK_0 ; 
 int WBCIR_IRQ_ERR ; 
 int WBCIR_IRQ_RX ; 
 scalar_t__ WBCIR_MAX_IDLE_BYTES ; 
 scalar_t__ WBCIR_REG_SP3_ASCR ; 
 scalar_t__ WBCIR_REG_SP3_EIR ; 
 scalar_t__ WBCIR_REG_SP3_LSR ; 
 scalar_t__ WBCIR_REG_SP3_RXDATA ; 
 int WBCIR_RX_AVAIL ; 
 int /*<<< orphan*/  WBCIR_RX_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct wbcir_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct wbcir_data* FUNC6 (struct pnp_dev*) ; 
 int protocol ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wbcir_lock ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct wbcir_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct wbcir_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct wbcir_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct wbcir_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct wbcir_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC14(int irqno, void *cookie)
{
	struct pnp_dev *device = cookie;
	struct wbcir_data *data = FUNC6(device);
	struct device *dev = &device->dev;
	u8 status;
	unsigned long flags;
	u8 irdata[8];
	int i;
	unsigned int hw;

	FUNC7(&wbcir_lock, flags);

	FUNC13(data, WBCIR_BANK_0);

	status = FUNC3(data->sbase + WBCIR_REG_SP3_EIR);

	if (!(status & (WBCIR_IRQ_RX | WBCIR_IRQ_ERR))) {
		FUNC8(&wbcir_lock, flags);
		return IRQ_NONE;
	}

	if (status & WBCIR_IRQ_ERR)
		data->irdata_error = 1;

	if (!(status & WBCIR_IRQ_RX))
		goto out;

	/* Since RXHDLEV is set, at least 8 bytes are in the FIFO */
	FUNC4(data->sbase + WBCIR_REG_SP3_RXDATA, &irdata[0], 8);

	for (i = 0; i < sizeof(irdata); i++) {
		hw = FUNC2(irdata[i]);
		if (hw > 4)
			FUNC0(data, 0);
		else
			FUNC0(data, 1);

		if (hw == 8)
			data->idle_count++;
		else
			data->idle_count = 0;
	}

	if (data->idle_count > WBCIR_MAX_IDLE_BYTES) {
		/* Set RXINACTIVE... */
		FUNC5(WBCIR_RX_DISABLE, data->sbase + WBCIR_REG_SP3_ASCR);

		/* ...and drain the FIFO */
		while (FUNC3(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_AVAIL)
			FUNC3(data->sbase + WBCIR_REG_SP3_RXDATA);

		FUNC1(dev, "IRDATA:\n");
		for (i = 0; i < data->irdata_count; i += BITS_PER_LONG)
			FUNC1(dev, "0x%08lX\n", data->irdata[i/BITS_PER_LONG]);

		switch (protocol) {
		case IR_PROTOCOL_RC5:
			FUNC10(dev, data);
			break;
		case IR_PROTOCOL_RC6:
			FUNC11(dev, data);
			break;
		case IR_PROTOCOL_NEC:
			FUNC9(dev, data);
			break;
		}

		FUNC12(data);
		data->idle_count = 0;
	}

out:
	FUNC8(&wbcir_lock, flags);
	return IRQ_HANDLED;
}