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
struct pnp_dev {int dummy; } ;
struct ide_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ide_host*) ; 
 struct ide_host* FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct pnp_dev *dev)
{
	struct ide_host *host = FUNC1(dev);

	FUNC0(host);

	FUNC3(FUNC2(dev, 1), 1);
	FUNC3(FUNC2(dev, 0), 8);
}