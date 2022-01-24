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
struct comedi_device {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ dw_AiBase; scalar_t__ b_EocEosInterrupt; } ;

/* Variables and functions */
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

int FUNC4(struct comedi_device *dev)
{
	unsigned char b_Cpt = 0;

	/*************************/
	/* Disable the interrupt */
	/*************************/

	FUNC0(dev->irq);

	/****************************/
	/* Reset the interrupt flag */
	/****************************/

	devpriv->b_EocEosInterrupt = 0;

	/***************************/
	/* Clear the start command */
	/***************************/

	FUNC3(0, (void *)(devpriv->dw_AiBase + 8));

	/*****************************/
	/* Reset the interrupt flags */
	/*****************************/

	FUNC3(FUNC2((void *)(devpriv->dw_AiBase + 16)),
		(void *)(devpriv->dw_AiBase + 16));

	/*****************/
	/* clear the EOS */
	/*****************/

	FUNC2((void *)(devpriv->dw_AiBase + 20));

	/******************/
	/* Clear the FIFO */
	/******************/

	for (b_Cpt = 0; b_Cpt < 16; b_Cpt++) {
		FUNC2((void *)(devpriv->dw_AiBase + 28));
	}

	/************************/
	/* Enable the interrupt */
	/************************/

	FUNC1(dev->irq);

	return 0;
}