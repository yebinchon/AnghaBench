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
 int* IOP3XX_ICR0 ; 
 int* IOP3XX_IDBR0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0();

	/* Start condition, I2C address of PCA9532, write transaction.  */
	*IOP3XX_IDBR0 = 0xc0;
	*IOP3XX_ICR0 = 0xe9;
	FUNC1(1);

	/* Write address 0x08.  */
	*IOP3XX_IDBR0 = 0x08;
	*IOP3XX_ICR0 = 0xe8;
	FUNC1(1);

	/* Write data 0x01, stop condition.  */
	*IOP3XX_IDBR0 = 0x01;
	*IOP3XX_ICR0 = 0xea;

	while (1)
		;
}