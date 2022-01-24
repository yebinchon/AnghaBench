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
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dma; scalar_t__ usedma; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	if (devpriv->usedma) {
		FUNC0(devpriv->dma[0].chan);
		FUNC0(devpriv->dma[1].chan);
	}
}