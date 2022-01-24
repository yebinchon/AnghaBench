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
struct soc_pcmcia_socket {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EN0 ; 
 int EN1 ; 
 int /*<<< orphan*/  IRQ_GPIO_CF_IRQ ; 
 int VCC_3V_EN ; 
 int VCC_5V_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  irqs ; 
 int FUNC2 (struct soc_pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct soc_pcmcia_socket *skt)
{

	FUNC1(VCC_3V_EN|VCC_5V_EN|EN0|EN1);

	skt->irq = IRQ_GPIO_CF_IRQ;

	return FUNC2(skt, irqs, FUNC0(irqs));
}