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
struct s6gmac {int dummy; } ;
struct mii_bus {struct s6gmac* priv; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  PHY_INIT_TIMEOUT ; 
 scalar_t__ FUNC0 (struct s6gmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s6gmac*) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus)
{
	struct s6gmac *pd = bus->priv;
	FUNC1(pd);
	if (FUNC0(pd, PHY_INIT_TIMEOUT))
		return -ETIME;
	return 0;
}