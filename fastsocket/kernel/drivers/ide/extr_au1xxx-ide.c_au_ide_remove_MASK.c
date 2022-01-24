#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct ide_host {int dummy; } ;
struct TYPE_3__ {scalar_t__ regbase; } ;
typedef  TYPE_1__ _auide_hwif ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 TYPE_1__ auide_hwif ; 
 int /*<<< orphan*/  FUNC0 (struct ide_host*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct ide_host* FUNC2 (struct platform_device*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct resource *res;
	struct ide_host *host = FUNC2(dev);
	_auide_hwif *ahwif = &auide_hwif;

	FUNC0(host);

	FUNC1((void *)ahwif->regbase);

	res = FUNC3(dev, IORESOURCE_MEM, 0);
	FUNC4(res->start, res->end - res->start + 1);

	return 0;
}