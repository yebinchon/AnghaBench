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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int dma_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MVME147_IRQ_SCSI_PORT ; 
 TYPE_1__* m147_pcc ; 
 int /*<<< orphan*/  mvme147_host ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC1 (int irq, void *dummy)
{
    if (irq == MVME147_IRQ_SCSI_PORT)
	FUNC0 (mvme147_host);
    else
	m147_pcc->dma_intr = 0x89;	/* Ack and enable ints */
    return IRQ_HANDLED;
}