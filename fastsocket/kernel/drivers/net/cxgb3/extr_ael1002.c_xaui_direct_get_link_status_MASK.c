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
struct TYPE_2__ {int prtad; } ;
struct cphy {int /*<<< orphan*/  adapter; TYPE_1__ mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_XGM_SERDES_STAT0 ; 
 int /*<<< orphan*/  A_XGM_SERDES_STAT1 ; 
 int /*<<< orphan*/  A_XGM_SERDES_STAT2 ; 
 int /*<<< orphan*/  A_XGM_SERDES_STAT3 ; 
 int DUPLEX_FULL ; 
 unsigned int F_LOWSIG0 ; 
 int SPEED_10000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cphy *phy, int *link_ok,
				       int *speed, int *duplex, int *fc)
{
	if (link_ok) {
		unsigned int status;
		int prtad = phy->mdio.prtad;

		status = FUNC1(phy->adapter,
				     FUNC0(A_XGM_SERDES_STAT0, prtad)) |
		    FUNC1(phy->adapter,
				    FUNC0(A_XGM_SERDES_STAT1, prtad)) |
		    FUNC1(phy->adapter,
				FUNC0(A_XGM_SERDES_STAT2, prtad)) |
		    FUNC1(phy->adapter,
				FUNC0(A_XGM_SERDES_STAT3, prtad));
		*link_ok = !(status & F_LOWSIG0);
	}
	if (speed)
		*speed = SPEED_10000;
	if (duplex)
		*duplex = DUPLEX_FULL;
	return 0;
}