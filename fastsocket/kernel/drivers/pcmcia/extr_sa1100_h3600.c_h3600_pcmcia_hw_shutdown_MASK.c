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
 int /*<<< orphan*/  IPAQ_EGPIO_OPT_NVRAM_ON ; 
 int /*<<< orphan*/  IPAQ_EGPIO_OPT_ON ; 
 int /*<<< orphan*/  IPAQ_EGPIO_OPT_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  irqs ; 
 int /*<<< orphan*/  FUNC2 (struct soc_pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct soc_pcmcia_socket *skt)
{
	FUNC2(skt, irqs, FUNC0(irqs));
  
	/* Disable CF bus: */
	FUNC1(IPAQ_EGPIO_OPT_NVRAM_ON, 0);
	FUNC1(IPAQ_EGPIO_OPT_ON, 0);
	FUNC1(IPAQ_EGPIO_OPT_RESET, 1);
}