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
struct parport_ip32_private {int /*<<< orphan*/  irq_mode; int /*<<< orphan*/  irq_complete; } ;
struct parport {TYPE_1__* cad; struct parport* physport; struct parport_ip32_private* private_data; } ;
struct TYPE_2__ {unsigned long timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int ECR_DMAEN ; 
 unsigned int ECR_SERVINTR ; 
 int /*<<< orphan*/  FIFO_NFAULT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARPORT_IP32_IRQ_FWD ; 
 int /*<<< orphan*/  PARPORT_IP32_IRQ_HERE ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct parport*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct parport*,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (struct parport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static size_t FUNC10(struct parport *p,
						const void *buf, size_t len)
{
	struct parport_ip32_private * const priv = p->physport->private_data;
	struct parport * const physport = p->physport;
	unsigned long nfault_timeout;
	unsigned long expire;
	size_t written;
	unsigned int ecr;

	priv->irq_mode = PARPORT_IP32_IRQ_HERE;

	FUNC4(DMA_TO_DEVICE, (void *)buf, len);
	FUNC0(priv->irq_complete);
	FUNC7(p, ECR_DMAEN | ECR_SERVINTR, ECR_DMAEN);

	nfault_timeout = FUNC1((unsigned long)physport->cad->timeout,
			     FUNC2(FIFO_NFAULT_TIMEOUT));
	expire = jiffies + physport->cad->timeout;
	while (1) {
		if (FUNC6(p, expire))
			break;
		FUNC9(&priv->irq_complete,
							  nfault_timeout);
		ecr = FUNC8(p);
		if (ecr & ECR_SERVINTR)
			break;	/* DMA transfer just finished */
	}
	FUNC5();
	written = len - FUNC3();

	priv->irq_mode = PARPORT_IP32_IRQ_FWD;

	return written;
}