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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MX31_PIN_SCK6 ; 
 int /*<<< orphan*/  SDHC1_GPIO_DET ; 
 int /*<<< orphan*/  SDHC1_GPIO_WP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, void *data)
{
	FUNC1(FUNC0(MX31_PIN_SCK6), data);
	FUNC2(SDHC1_GPIO_DET);
	FUNC2(SDHC1_GPIO_WP);
}