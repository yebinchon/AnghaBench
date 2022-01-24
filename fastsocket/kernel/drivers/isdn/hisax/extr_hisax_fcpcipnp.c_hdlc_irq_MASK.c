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
struct fritz_adapter {int (* read_hdlc_status ) (struct fritz_adapter*,int) ;int /*<<< orphan*/ * bcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char,int) ; 
 int HDLC_INT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct fritz_adapter*,int) ; 

__attribute__((used)) static inline void FUNC3(struct fritz_adapter *adapter)
{
	int nr;
	u32 stat;

	for (nr = 0; nr < 2; nr++) {
		stat = adapter->read_hdlc_status(adapter, nr);
		FUNC0(0x10, "HDLC %c stat %#x", 'A' + nr, stat);
		if (stat & HDLC_INT_MASK)
			FUNC1(&adapter->bcs[nr], stat);
	}
}