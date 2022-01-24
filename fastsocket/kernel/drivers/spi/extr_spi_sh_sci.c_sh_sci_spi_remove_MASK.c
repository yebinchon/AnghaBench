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
struct TYPE_2__ {int /*<<< orphan*/  master; } ;
struct sh_sci_spi {TYPE_1__ bitbang; int /*<<< orphan*/  membase; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sh_sci_spi* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_sci_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct sh_sci_spi *sp = FUNC1(dev);

	FUNC0(sp->membase);
	FUNC2(sp, PIN_INIT, 0);
	FUNC3(&sp->bitbang);
	FUNC4(sp->bitbang.master);
	return 0;
}