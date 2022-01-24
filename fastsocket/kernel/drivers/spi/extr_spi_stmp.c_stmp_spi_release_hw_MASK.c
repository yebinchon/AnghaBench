#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stmp_spi {TYPE_1__* master_dev; scalar_t__ clk; } ;
struct TYPE_2__ {void* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct stmp_spi *ss)
{
	void *pins = ss->master_dev->platform_data;

	if (ss->clk && !FUNC0(ss->clk)) {
		FUNC1(ss->clk);
		FUNC2(ss->clk);
	}
	FUNC4(pins, FUNC3(ss->master_dev));
}