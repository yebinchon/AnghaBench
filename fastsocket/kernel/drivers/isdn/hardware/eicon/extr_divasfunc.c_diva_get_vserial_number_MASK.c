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
struct TYPE_3__ {int serialNo; } ;
typedef  TYPE_1__* PISDN_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,...) ; 

void FUNC1(PISDN_ADAPTER IoAdapter, char *buf)
{
	int contr = 0;

	if ((contr = ((IoAdapter->serialNo & 0xff000000) >> 24))) {
		FUNC0(buf, "%d-%d",
			IoAdapter->serialNo & 0x00ffffff, contr + 1);
	} else {
		FUNC0(buf, "%d", IoAdapter->serialNo);
	}
}