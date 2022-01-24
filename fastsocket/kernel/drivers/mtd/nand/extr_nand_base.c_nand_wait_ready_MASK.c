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
struct nand_chip {scalar_t__ (* dev_ready ) (struct mtd_info*) ;} ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nand_led_trigger ; 
 scalar_t__ FUNC1 (struct mtd_info*) ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct mtd_info *mtd)
{
	struct nand_chip *chip = mtd->priv;
	unsigned long timeo = jiffies + 2;

	FUNC0(nand_led_trigger, LED_FULL);
	/* wait until command is processed or timeout occures */
	do {
		if (chip->dev_ready(mtd))
			break;
		FUNC3();
	} while (FUNC2(jiffies, timeo));
	FUNC0(nand_led_trigger, LED_OFF);
}