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

/* Variables and functions */
 int EEP_BUSY ; 
 int EEP_READ ; 
 scalar_t__ EepromCtrl ; 
 scalar_t__ EepromData ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC2 (long ioaddr, int eep_addr)
{
	int i = 1000;
	FUNC1 (EEP_READ | (eep_addr & 0xff), ioaddr + EepromCtrl);
	while (i-- > 0) {
		if (!(FUNC0 (ioaddr + EepromCtrl) & EEP_BUSY)) {
			return FUNC0 (ioaddr + EepromData);
		}
	}
	return 0;
}