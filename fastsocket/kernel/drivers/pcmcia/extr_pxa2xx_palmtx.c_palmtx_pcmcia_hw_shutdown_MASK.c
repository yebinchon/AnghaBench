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
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_POWER1 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_POWER2 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_READY ; 
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct soc_pcmcia_socket *skt)
{
	FUNC0(GPIO_NR_PALMTX_PCMCIA_READY);
	FUNC0(GPIO_NR_PALMTX_PCMCIA_RESET);
	FUNC0(GPIO_NR_PALMTX_PCMCIA_POWER2);
	FUNC0(GPIO_NR_PALMTX_PCMCIA_POWER1);
}