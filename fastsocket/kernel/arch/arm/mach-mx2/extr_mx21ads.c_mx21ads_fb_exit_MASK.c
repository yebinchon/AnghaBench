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
typedef  int /*<<< orphan*/  u16 ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MX21ADS_IO_LCDON ; 
 int /*<<< orphan*/  MX21ADS_IO_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	u16 tmp;

	tmp = FUNC0(MX21ADS_IO_REG);
	tmp &= ~MX21ADS_IO_LCDON;
	FUNC1(tmp, MX21ADS_IO_REG);
}