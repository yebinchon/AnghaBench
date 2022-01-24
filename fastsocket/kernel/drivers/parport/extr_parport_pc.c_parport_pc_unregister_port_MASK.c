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
struct parport_pc_private {int /*<<< orphan*/  dma_handle; scalar_t__ dma_buf; int /*<<< orphan*/  list; } ;
struct parport_operations {int /*<<< orphan*/  dma_handle; scalar_t__ dma_buf; int /*<<< orphan*/  list; } ;
struct parport {scalar_t__ dma; scalar_t__ irq; int size; int modes; struct parport_pc_private* private_data; TYPE_1__* physport; scalar_t__ base_hi; scalar_t__ base; struct parport_pc_private* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PARPORT_DMA_NONE ; 
 scalar_t__ PARPORT_IRQ_NONE ; 
 int PARPORT_MODE_ECP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct parport*) ; 
 int /*<<< orphan*/  FUNC3 (struct parport_pc_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct parport*) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*) ; 
 int /*<<< orphan*/  ports_lock ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct parport *p)
{
	struct parport_pc_private *priv = p->private_data;
	struct parport_operations *ops = p->ops;

	FUNC6(p);
	FUNC8(&ports_lock);
	FUNC4(&priv->list);
	FUNC9(&ports_lock);
#if defined(CONFIG_PARPORT_PC_FIFO) && defined(HAS_DMA)
	if (p->dma != PARPORT_DMA_NONE)
		free_dma(p->dma);
#endif
	if (p->irq != PARPORT_IRQ_NONE)
		FUNC2(p->irq, p);
	FUNC7(p->base, 3);
	if (p->size > 3)
		FUNC7(p->base + 3, p->size - 3);
	if (p->modes & PARPORT_MODE_ECP)
		FUNC7(p->base_hi, 3);
#if defined(CONFIG_PARPORT_PC_FIFO) && defined(HAS_DMA)
	if (priv->dma_buf)
		dma_free_coherent(p->physport->dev, PAGE_SIZE,
				    priv->dma_buf,
				    priv->dma_handle);
#endif
	FUNC3(p->private_data);
	FUNC5(p);
	FUNC3(ops); /* hope no-one cached it */
}