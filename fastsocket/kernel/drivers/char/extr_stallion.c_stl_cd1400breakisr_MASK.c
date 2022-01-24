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
struct stlport {int brklen; int uartaddr; } ;

/* Variables and functions */
 int COR2 ; 
 int COR2_ETC ; 
 int EREG_DATA ; 
 int ETC_CMD ; 
 int ETC_STARTBREAK ; 
 int ETC_STOPBREAK ; 
 int SRER ; 
 int SRER_TXDATA ; 
 int SRER_TXEMPTY ; 
 int TDR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct stlport *portp, int ioaddr)
{
	if (portp->brklen == 1) {
		FUNC1((COR2 + portp->uartaddr), ioaddr);
		FUNC1((FUNC0(ioaddr + EREG_DATA) | COR2_ETC),
			(ioaddr + EREG_DATA));
		FUNC1((TDR + portp->uartaddr), ioaddr);
		FUNC1(ETC_CMD, (ioaddr + EREG_DATA));
		FUNC1(ETC_STARTBREAK, (ioaddr + EREG_DATA));
		FUNC1((SRER + portp->uartaddr), ioaddr);
		FUNC1((FUNC0(ioaddr + EREG_DATA) & ~(SRER_TXDATA | SRER_TXEMPTY)),
			(ioaddr + EREG_DATA));
		return 1;
	} else if (portp->brklen > 1) {
		FUNC1((TDR + portp->uartaddr), ioaddr);
		FUNC1(ETC_CMD, (ioaddr + EREG_DATA));
		FUNC1(ETC_STOPBREAK, (ioaddr + EREG_DATA));
		portp->brklen = -1;
		return 1;
	} else {
		FUNC1((COR2 + portp->uartaddr), ioaddr);
		FUNC1((FUNC0(ioaddr + EREG_DATA) & ~COR2_ETC),
			(ioaddr + EREG_DATA));
		portp->brklen = 0;
	}
	return 0;
}