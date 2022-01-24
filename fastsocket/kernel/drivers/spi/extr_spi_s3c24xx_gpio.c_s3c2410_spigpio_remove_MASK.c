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
struct s3c2410_spigpio {TYPE_1__ bitbang; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct s3c2410_spigpio* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct s3c2410_spigpio *sp = FUNC0(dev);

	FUNC1(&sp->bitbang);
	FUNC2(sp->bitbang.master);

	return 0;
}