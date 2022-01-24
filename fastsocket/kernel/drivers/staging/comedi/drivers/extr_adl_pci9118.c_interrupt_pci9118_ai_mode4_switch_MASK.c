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
struct TYPE_2__ {int AdFunctionReg; int* dmabuf_hw; int dma_actbuf; } ;

/* Variables and functions */
 int AdFunction_AM ; 
 int AdFunction_PDTrg ; 
 int AdFunction_PETrg ; 
 int AdFunction_Start ; 
 scalar_t__ PCI9118_ADFUNC ; 
 scalar_t__ PCI9118_CNT0 ; 
 scalar_t__ PCI9118_CNTCTRL ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	devpriv->AdFunctionReg =
	    AdFunction_PDTrg | AdFunction_PETrg | AdFunction_AM;
	FUNC0(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
	FUNC0(0x30, dev->iobase + PCI9118_CNTCTRL);
	FUNC0((devpriv->dmabuf_hw[1 - devpriv->dma_actbuf] >> 1) & 0xff,
	     dev->iobase + PCI9118_CNT0);
	FUNC0((devpriv->dmabuf_hw[1 - devpriv->dma_actbuf] >> 9) & 0xff,
	     dev->iobase + PCI9118_CNT0);
	devpriv->AdFunctionReg |= AdFunction_Start;
	FUNC0(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
}