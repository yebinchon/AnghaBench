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
typedef  int u32 ;
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int ioaddr; int /*<<< orphan*/  dev_lock; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SMSC911X_USE_16BIT ; 
 int SMSC911X_USE_32BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static inline void FUNC5(struct smsc911x_data *pdata, u32 reg,
				      u32 val)
{
	if (pdata->config.flags & SMSC911X_USE_32BIT) {
		FUNC3(val, pdata->ioaddr + reg);
		return;
	}

	if (pdata->config.flags & SMSC911X_USE_16BIT) {
		unsigned long flags;

		/* these two 16-bit writes must be performed consecutively, so
		 * must not be interrupted by our own ISR (which would start
		 * another read operation) */
		FUNC1(&pdata->dev_lock, flags);
		FUNC4(val & 0xFFFF, pdata->ioaddr + reg);
		FUNC4((val >> 16) & 0xFFFF, pdata->ioaddr + reg + 2);
		FUNC2(&pdata->dev_lock, flags);
		return;
	}

	FUNC0();
}