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
struct s_smc {struct s_phy* y; } ;
struct s_phy {int dummy; } ;

/* Variables and functions */
 int NUMPHYS ; 
 int /*<<< orphan*/  FUNC0 (struct s_smc*,struct s_phy*) ; 

void FUNC1(struct s_smc *smc)
{
	struct s_phy	*phy ;
	int		p ;

	for ( p = 0,phy = smc->y ; p < NUMPHYS; p++, phy++ ) {
		/* Do the selection criteria */
		FUNC0 (smc,phy);
	}
}