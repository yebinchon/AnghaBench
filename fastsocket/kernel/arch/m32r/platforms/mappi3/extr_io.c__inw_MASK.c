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
typedef  int /*<<< orphan*/  w ;

/* Variables and functions */
 unsigned long LAN_IOEND ; 
 unsigned long LAN_IOSTART ; 
 unsigned long M32R_PCC_IOEND0 ; 
 unsigned long M32R_PCC_IOSTART0 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned short*,int,int,int /*<<< orphan*/ ) ; 

unsigned short FUNC6(unsigned long port)
{
	if (port >= LAN_IOSTART && port < LAN_IOEND)
		return FUNC4(FUNC1(port));
#if defined(CONFIG_IDE)
	else if ( ((port >= 0x170 && port <=0x177) || port == 0x376) ||
		  ((port >= 0x1f0 && port <=0x1f7) || port == 0x3f6) ){
		return *(volatile unsigned short *)__port2addr_ata(port);
	}
#endif
#if defined(CONFIG_USB)
	else if (port >= 0x340 && port < 0x3a0)
		return *(volatile unsigned short *)PORT2ADDR_USB(port);
#endif

#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_CFC)
	else if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		unsigned short w;
		pcc_ioread_word(0, port, &w, sizeof(w), 1, 0);
		return w;
	} else
#endif
	return *(volatile unsigned short *)FUNC0(port);
}