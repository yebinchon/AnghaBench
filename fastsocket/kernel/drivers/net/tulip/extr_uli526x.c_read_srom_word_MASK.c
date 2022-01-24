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
typedef  int u16 ;

/* Variables and functions */
 int CR9_CRDOUT ; 
 int CR9_SRCLK ; 
 int CR9_SRCS ; 
 int CR9_SROM_READ ; 
 long DCR9 ; 
 int /*<<< orphan*/  FUNC0 (int,long) ; 
 int SROM_DATA_0 ; 
 int SROM_DATA_1 ; 
 int FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u16 FUNC4(long ioaddr, int offset)
{
	int i;
	u16 srom_data = 0;
	long cr9_ioaddr = ioaddr + DCR9;

	FUNC2(CR9_SROM_READ, cr9_ioaddr);
	FUNC2(CR9_SROM_READ | CR9_SRCS, cr9_ioaddr);

	/* Send the Read Command 110b */
	FUNC0(SROM_DATA_1, cr9_ioaddr);
	FUNC0(SROM_DATA_1, cr9_ioaddr);
	FUNC0(SROM_DATA_0, cr9_ioaddr);

	/* Send the offset */
	for (i = 5; i >= 0; i--) {
		srom_data = (offset & (1 << i)) ? SROM_DATA_1 : SROM_DATA_0;
		FUNC0(srom_data, cr9_ioaddr);
	}

	FUNC2(CR9_SROM_READ | CR9_SRCS, cr9_ioaddr);

	for (i = 16; i > 0; i--) {
		FUNC2(CR9_SROM_READ | CR9_SRCS | CR9_SRCLK, cr9_ioaddr);
		FUNC3(5);
		srom_data = (srom_data << 1) | ((FUNC1(cr9_ioaddr) & CR9_CRDOUT) ? 1 : 0);
		FUNC2(CR9_SROM_READ | CR9_SRCS, cr9_ioaddr);
		FUNC3(5);
	}

	FUNC2(CR9_SROM_READ, cr9_ioaddr);
	return srom_data;
}