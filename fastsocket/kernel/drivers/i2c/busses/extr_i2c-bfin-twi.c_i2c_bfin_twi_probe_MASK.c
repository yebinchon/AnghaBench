#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {size_t id; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {size_t nr; int class; TYPE_1__ dev; struct bfin_twi_iface* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct bfin_twi_iface {scalar_t__ irq; int /*<<< orphan*/ * regs_base; struct i2c_adapter adap; TYPE_2__ timeout_timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int TWI_ENA ; 
 int /*<<< orphan*/  bfin_twi_algorithm ; 
 int /*<<< orphan*/  bfin_twi_interrupt_entry ; 
 int /*<<< orphan*/  bfin_twi_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct bfin_twi_iface*) ; 
 int FUNC4 () ; 
 int FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bfin_twi_iface*) ; 
 struct bfin_twi_iface* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * pin_req ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct bfin_twi_iface*) ; 
 int FUNC16 (struct bfin_twi_iface*) ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC18 (struct resource*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct bfin_twi_iface*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct bfin_twi_iface*,int) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct bfin_twi_iface *iface;
	struct i2c_adapter *p_adap;
	struct resource *res;
	int rc;
	unsigned int clkhilow;

	iface = FUNC10(sizeof(struct bfin_twi_iface), GFP_KERNEL);
	if (!iface) {
		FUNC1(&pdev->dev, "Cannot allocate memory\n");
		rc = -ENOMEM;
		goto out_error_nomem;
	}

	FUNC19(&(iface->lock));

	/* Find and map our resources */
	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC1(&pdev->dev, "Cannot get IORESOURCE_MEM\n");
		rc = -ENOENT;
		goto out_error_get_res;
	}

	iface->regs_base = FUNC7(res->start, FUNC18(res));
	if (iface->regs_base == NULL) {
		FUNC1(&pdev->dev, "Cannot map IO\n");
		rc = -ENXIO;
		goto out_error_ioremap;
	}

	iface->irq = FUNC13(pdev, 0);
	if (iface->irq < 0) {
		FUNC1(&pdev->dev, "No IRQ specified\n");
		rc = -ENOENT;
		goto out_error_no_irq;
	}

	FUNC6(&(iface->timeout_timer));
	iface->timeout_timer.function = bfin_twi_timeout;
	iface->timeout_timer.data = (unsigned long)iface;

	p_adap = &iface->adap;
	p_adap->nr = pdev->id;
	FUNC20(p_adap->name, pdev->name, sizeof(p_adap->name));
	p_adap->algo = &bfin_twi_algorithm;
	p_adap->algo_data = iface;
	p_adap->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	p_adap->dev.parent = &pdev->dev;

	rc = FUNC12(pin_req[pdev->id], "i2c-bfin-twi");
	if (rc) {
		FUNC1(&pdev->dev, "Can't setup pin mux!\n");
		goto out_error_pin_mux;
	}

	rc = FUNC17(iface->irq, bfin_twi_interrupt_entry,
		IRQF_DISABLED, pdev->name, iface);
	if (rc) {
		FUNC1(&pdev->dev, "Can't get IRQ %d !\n", iface->irq);
		rc = -ENODEV;
		goto out_error_req_irq;
	}

	/* Set TWI internal clock as 10MHz */
	FUNC22(iface, ((FUNC4() / 1024 / 1024 + 5) / 10) & 0x7F);

	/*
	 * We will not end up with a CLKDIV=0 because no one will specify
	 * 20kHz SCL or less in Kconfig now. (5 * 1024 / 20 = 0x100)
	 */
	clkhilow = 5 * 1024 / CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ;

	/* Set Twi interface clock as specified */
	FUNC21(iface, (clkhilow << 8) | clkhilow);

	/* Enable TWI */
	FUNC22(iface, FUNC16(iface) | TWI_ENA);
	FUNC0();

	rc = FUNC5(p_adap);
	if (rc < 0) {
		FUNC1(&pdev->dev, "Can't add i2c adapter!\n");
		goto out_error_add_adapter;
	}

	FUNC15(pdev, iface);

	FUNC2(&pdev->dev, "Blackfin BF5xx on-chip I2C TWI Contoller, "
		"regs_base@%p\n", iface->regs_base);

	return 0;

out_error_add_adapter:
	FUNC3(iface->irq, iface);
out_error_req_irq:
out_error_no_irq:
	FUNC11(pin_req[pdev->id]);
out_error_pin_mux:
	FUNC8(iface->regs_base);
out_error_ioremap:
out_error_get_res:
	FUNC9(iface);
out_error_nomem:
	return rc;
}