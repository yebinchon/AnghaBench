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
struct sa1100_irda {int speed; int open; int /*<<< orphan*/  rxdma; int /*<<< orphan*/  txdma; int /*<<< orphan*/  irlap; int /*<<< orphan*/  qos; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_Ser2HSSPRd ; 
 int /*<<< orphan*/  DMA_Ser2HSSPWr ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *,char*) ; 
 struct sa1100_irda* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  power_level ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa1100_irda_irq ; 
 int /*<<< orphan*/  FUNC8 (struct sa1100_irda*) ; 
 int FUNC9 (struct sa1100_irda*) ; 
 int /*<<< orphan*/ * sa1100_irda_txdma_irq ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sa1100_irda*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct sa1100_irda *si = FUNC4(dev);
	int err;

	si->speed = 9600;

	err = FUNC6(dev->irq, sa1100_irda_irq, 0, dev->name, dev);
	if (err)
		goto err_irq;

	err = FUNC10(DMA_Ser2HSSPRd, "IrDA receive",
				 NULL, NULL, &si->rxdma);
	if (err)
		goto err_rx_dma;

	err = FUNC10(DMA_Ser2HSSPWr, "IrDA transmit",
				 sa1100_irda_txdma_irq, dev, &si->txdma);
	if (err)
		goto err_tx_dma;

	/*
	 * The interrupt must remain disabled for now.
	 */
	FUNC0(dev->irq);

	/*
	 * Setup the serial port for the specified speed.
	 */
	err = FUNC9(si);
	if (err)
		goto err_startup;

	/*
	 * Open a new IrLAP layer instance.
	 */
	si->irlap = FUNC3(dev, &si->qos, "sa1100");
	err = -ENOMEM;
	if (!si->irlap)
		goto err_irlap;

	/*
	 * Now enable the interrupt and start the queue
	 */
	si->open = 1;
	FUNC11(si, power_level); /* low power mode */
	FUNC1(dev->irq);
	FUNC5(dev);
	return 0;

err_irlap:
	si->open = 0;
	FUNC8(si);
err_startup:
	FUNC7(si->txdma);
err_tx_dma:
	FUNC7(si->rxdma);
err_rx_dma:
	FUNC2(dev->irq, dev);
err_irq:
	return err;
}