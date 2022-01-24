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
struct soc_pcmcia_socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASSABET_BCR_CF_BUS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irqs ; 
 int /*<<< orphan*/  FUNC2 (struct soc_pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct soc_pcmcia_socket *skt)
{
	/*
	 * Enable CF bus
	 */
	FUNC1(ASSABET_BCR_CF_BUS_OFF);

	FUNC2(skt, irqs, FUNC0(irqs));
}