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
struct rc_dev {char* input_name; int /*<<< orphan*/  s_carrier_report; int /*<<< orphan*/  s_tx_duty_cycle; int /*<<< orphan*/  s_tx_carrier; int /*<<< orphan*/  s_tx_mask; int /*<<< orphan*/  tx_ir; int /*<<< orphan*/  s_learning_mode; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  s_idle; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct ene_device* priv; int /*<<< orphan*/  allowed_protos; int /*<<< orphan*/  driver_type; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct ene_device {int hw_io; int irq; int hw_learning_and_tx_capable; struct rc_dev* rdev; int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  tx_sim_timer; struct pnp_dev* pnp_dev; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENE_DEFAULT_SAMPLE_PERIOD ; 
 int /*<<< orphan*/  ENE_DRIVER_NAME ; 
 scalar_t__ ENE_IO_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_RC6_MCE ; 
 int /*<<< orphan*/  RC_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ene_close ; 
 int FUNC2 (struct ene_device*) ; 
 int /*<<< orphan*/  ene_isr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ene_open ; 
 int /*<<< orphan*/  FUNC4 (struct ene_device*) ; 
 int /*<<< orphan*/  ene_set_carrier_report ; 
 int /*<<< orphan*/  ene_set_idle ; 
 int /*<<< orphan*/  ene_set_learning_mode ; 
 int /*<<< orphan*/  ene_set_tx_carrier ; 
 int /*<<< orphan*/  ene_set_tx_duty_cycle ; 
 int /*<<< orphan*/  ene_set_tx_mask ; 
 int /*<<< orphan*/  FUNC5 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ene_device*) ; 
 int /*<<< orphan*/  ene_transmit ; 
 int /*<<< orphan*/  ene_tx_irqsim ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct ene_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ene_device*) ; 
 struct ene_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int learning_mode_force ; 
 int FUNC12 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pnp_dev*,struct ene_device*) ; 
 struct rc_dev* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct rc_dev*) ; 
 int FUNC20 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC23 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int sample_period ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ txsim ; 

__attribute__((used)) static int FUNC26(struct pnp_dev *pnp_dev, const struct pnp_device_id *id)
{
	int error = -ENOMEM;
	struct rc_dev *rdev;
	struct ene_device *dev;

	/* allocate memory */
	dev = FUNC11(sizeof(struct ene_device), GFP_KERNEL);
	rdev = FUNC18();
	if (!dev || !rdev)
		goto error1;

	/* validate resources */
	error = -ENODEV;

	/* init these to -1, as 0 is valid for both */
	dev->hw_io = -1;
	dev->irq = -1;

	if (!FUNC16(pnp_dev, 0) ||
	    FUNC14(pnp_dev, 0) < ENE_IO_SIZE)
		goto error;

	if (!FUNC13(pnp_dev, 0))
		goto error;

	FUNC25(&dev->hw_lock);

	/* claim the resources */
	error = -EBUSY;
	dev->hw_io = FUNC15(pnp_dev, 0);
	if (!FUNC23(dev->hw_io, ENE_IO_SIZE, ENE_DRIVER_NAME)) {
		dev->hw_io = -1;
		dev->irq = -1;
		goto error;
	}

	dev->irq = FUNC12(pnp_dev, 0);
	if (FUNC22(dev->irq, ene_isr,
			IRQF_SHARED, ENE_DRIVER_NAME, (void *)dev)) {
		dev->irq = -1;
		goto error;
	}

	FUNC17(pnp_dev, dev);
	dev->pnp_dev = pnp_dev;

	/* don't allow too short/long sample periods */
	if (sample_period < 5 || sample_period > 0x7F)
		sample_period = ENE_DEFAULT_SAMPLE_PERIOD;

	/* detect hardware version and features */
	error = FUNC2(dev);
	if (error)
		goto error;

	if (!dev->hw_learning_and_tx_capable && txsim) {
		dev->hw_learning_and_tx_capable = true;
		FUNC24(&dev->tx_sim_timer, ene_tx_irqsim,
						(long unsigned int)dev);
		FUNC7("Simulation of TX activated");
	}

	if (!dev->hw_learning_and_tx_capable)
		learning_mode_force = false;

	rdev->driver_type = RC_DRIVER_IR_RAW;
	rdev->allowed_protos = RC_TYPE_ALL;
	rdev->priv = dev;
	rdev->open = ene_open;
	rdev->close = ene_close;
	rdev->s_idle = ene_set_idle;
	rdev->driver_name = ENE_DRIVER_NAME;
	rdev->map_name = RC_MAP_RC6_MCE;
	rdev->input_name = "ENE eHome Infrared Remote Receiver";

	if (dev->hw_learning_and_tx_capable) {
		rdev->s_learning_mode = ene_set_learning_mode;
		FUNC9(&dev->tx_complete);
		rdev->tx_ir = ene_transmit;
		rdev->s_tx_mask = ene_set_tx_mask;
		rdev->s_tx_carrier = ene_set_tx_carrier;
		rdev->s_tx_duty_cycle = ene_set_tx_duty_cycle;
		rdev->s_carrier_report = ene_set_carrier_report;
		rdev->input_name = "ENE eHome Infrared Remote Transceiver";
	}

	dev->rdev = rdev;

	FUNC4(dev);
	FUNC5(dev);
	FUNC6(dev);

	FUNC0(&pnp_dev->dev, true);
	FUNC1(&pnp_dev->dev, true);

	error = FUNC20(rdev);
	if (error < 0)
		goto error;

	FUNC3("driver has been succesfully loaded");
	return 0;
error:
	if (dev && dev->irq >= 0)
		FUNC8(dev->irq, dev);
	if (dev && dev->hw_io >= 0)
		FUNC21(dev->hw_io, ENE_IO_SIZE);
error1:
	FUNC19(rdev);
	FUNC10(dev);
	return error;
}