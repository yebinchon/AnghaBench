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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ plx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAQBOARD2000_SECRReloadHi ; 
 int /*<<< orphan*/  DAQBOARD2000_SECRReloadLo ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	FUNC0("daqboard2000_reloadPLX\n");
	FUNC2(DAQBOARD2000_SECRReloadLo, devpriv->plx + 0x6c);
	FUNC1(10000);
	FUNC2(DAQBOARD2000_SECRReloadHi, devpriv->plx + 0x6c);
	FUNC1(10000);
	FUNC2(DAQBOARD2000_SECRReloadLo, devpriv->plx + 0x6c);
	FUNC1(10000);
}