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
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline u32 FUNC5(struct smsc911x_data *pdata, u32 reg)
{
	if (pdata->config.flags & SMSC911X_USE_32BIT)
		return FUNC1(pdata->ioaddr + reg);

	if (pdata->config.flags & SMSC911X_USE_16BIT) {
		u32 data;
		unsigned long flags;

		/* these two 16-bit reads must be performed consecutively, so
		 * must not be interrupted by our own ISR (which would start
		 * another read operation) */
		FUNC3(&pdata->dev_lock, flags);
		data = ((FUNC2(pdata->ioaddr + reg) & 0xFFFF) |
			((FUNC2(pdata->ioaddr + reg + 2) & 0xFFFF) << 16));
		FUNC4(&pdata->dev_lock, flags);

		return data;
	}

	FUNC0();
	return 0;
}