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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;int /*<<< orphan*/  dma_chan; } ;

/* Variables and functions */
 scalar_t__ DMATC_CLEAR_REG ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	FUNC1(dev);

	FUNC0(devpriv->dma_chan);

	/*  clear dma tc interrupt */
	devpriv->write_byte(0x1, dev->iobase + DMATC_CLEAR_REG);
}