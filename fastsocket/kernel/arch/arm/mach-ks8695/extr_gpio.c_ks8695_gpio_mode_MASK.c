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

/* Variables and functions */
 unsigned int IOPC_IOEINT0EN ; 
 unsigned int IOPC_IOEINT1EN ; 
 unsigned int IOPC_IOEINT2EN ; 
 unsigned int IOPC_IOEINT3EN ; 
 unsigned int IOPC_IOTIM0EN ; 
 unsigned int IOPC_IOTIM1EN ; 
 unsigned int KS8695_GPIO_5 ; 
 scalar_t__ KS8695_GPIO_VA ; 
 scalar_t__ KS8695_IOPC ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int pin, short gpio)
{
	unsigned int enable[] = { IOPC_IOEINT0EN, IOPC_IOEINT1EN, IOPC_IOEINT2EN, IOPC_IOEINT3EN, IOPC_IOTIM0EN, IOPC_IOTIM1EN };
	unsigned long x, flags;

	if (pin > KS8695_GPIO_5)	/* only GPIO 0..5 have internal functions */
		return;

	FUNC3(flags);

	x = FUNC0(KS8695_GPIO_VA + KS8695_IOPC);
	if (gpio)			/* GPIO: set bit to 0 */
		x &= ~enable[pin];
	else				/* Internal function: set bit to 1 */
		x |= enable[pin];
	FUNC1(x, KS8695_GPIO_VA + KS8695_IOPC);

	FUNC2(flags);
}