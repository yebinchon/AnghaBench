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
typedef  int u32 ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_INT_CAUSE ; 
 int /*<<< orphan*/  MA_INT_WRAP_STATUS ; 
 int /*<<< orphan*/  MA_PARITY_ERROR_STATUS ; 
 int MEM_PERR_INT_CAUSE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MEM_WRAP_INT_CAUSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct adapter *adap)
{
	u32 v, status = FUNC4(adap, MA_INT_CAUSE);

	if (status & MEM_PERR_INT_CAUSE)
		FUNC2(adap->pdev_dev,
			  "MA parity error, parity status %#x\n",
			  FUNC4(adap, MA_PARITY_ERROR_STATUS));
	if (status & MEM_WRAP_INT_CAUSE) {
		v = FUNC4(adap, MA_INT_WRAP_STATUS);
		FUNC2(adap->pdev_dev, "MA address wrap-around error by "
			  "client %u to address %#x\n",
			  FUNC1(v),
			  FUNC0(v) << 4);
	}
	FUNC5(adap, MA_INT_CAUSE, status);
	FUNC3(adap);
}