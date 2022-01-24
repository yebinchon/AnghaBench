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
struct soc_pcmcia_socket {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int GPIO_A0 ; 
 unsigned int GPIO_A1 ; 
 unsigned int GPIO_A2 ; 
 unsigned int GPIO_A3 ; 
 int GRER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct soc_pcmcia_socket *skt)
{
	unsigned int pin = GPIO_A0 | GPIO_A1 | GPIO_A2 | GPIO_A3;

	/*
	* What is all this crap for?
	*/
	GRER |= 0x00000002;
	/* Set GPIO_A<3:1> to be outputs for PCMCIA/CF power controller: */
	FUNC3(FUNC0(skt->dev), pin, 0, 0);
	FUNC2(FUNC0(skt->dev), pin, 0);
	FUNC4(FUNC0(skt->dev), pin, 0);

	return FUNC1(skt);
}