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
struct solos_card {scalar_t__ config_regs; scalar_t__ buffers; int /*<<< orphan*/  tlet; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ FPGA_MODE ; 
 scalar_t__ IRQ_EN_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct solos_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct solos_card*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct solos_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct solos_card* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *dev)
{
	struct solos_card *card = FUNC6(dev);
	
	/* Disable IRQs */
	FUNC3(0, card->config_regs + IRQ_EN_ADDR);

	/* Reset FPGA */
	FUNC3(1, card->config_regs + FPGA_MODE);
	(void)FUNC2(card->config_regs + FPGA_MODE); 

	FUNC0(card);

	FUNC1(dev->irq, card);
	FUNC10(&card->tlet);

	/* Release device from reset */
	FUNC3(0, card->config_regs + FPGA_MODE);
	(void)FUNC2(card->config_regs + FPGA_MODE); 

	FUNC7(dev, card->buffers);
	FUNC7(dev, card->config_regs);

	FUNC8(dev);
	FUNC5(dev);

	FUNC9(dev, NULL);
	FUNC4(card);
}