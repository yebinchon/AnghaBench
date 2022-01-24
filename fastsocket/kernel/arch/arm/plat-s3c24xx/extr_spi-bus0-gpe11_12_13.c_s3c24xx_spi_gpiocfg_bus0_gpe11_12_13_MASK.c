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
struct s3c2410_spi_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C2410_GPE11_SPIMISO0 ; 
 int /*<<< orphan*/  S3C2410_GPE12_SPIMOSI0 ; 
 int /*<<< orphan*/  S3C2410_GPE13_SPICLK0 ; 
 int /*<<< orphan*/  S3C2410_GPIO_INPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct s3c2410_spi_info *spi,
					  int enable)
{
	if (enable) {
		FUNC1(FUNC0(13), S3C2410_GPE13_SPICLK0);
		FUNC1(FUNC0(12), S3C2410_GPE12_SPIMOSI0);
		FUNC1(FUNC0(11), S3C2410_GPE11_SPIMISO0);
		FUNC2(FUNC0(11), 0);
		FUNC2(FUNC0(13), 0);
	} else {
		FUNC1(FUNC0(13), S3C2410_GPIO_INPUT);
		FUNC1(FUNC0(11), S3C2410_GPIO_INPUT);
		FUNC2(FUNC0(11), 1);
		FUNC2(FUNC0(12), 1);
		FUNC2(FUNC0(13), 1);
	}
}