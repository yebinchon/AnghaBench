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
 int /*<<< orphan*/  FUNC4 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned short*,int,int,int /*<<< orphan*/ ) ; 

void FUNC6(unsigned short w, unsigned long port)
{
	if (port >= LAN_IOSTART && port < LAN_IOEND)
		FUNC4(w, FUNC1(port));
	else
#if defined(CONFIG_IDE) && !defined(CONFIG_M32R_CFC)
	if ((port >= 0x1f0 && port <=0x1f7) || port == 0x3f6) {
		*(volatile unsigned short *)__port2addr_ata(port) = w;
	} else
#endif
#if defined(CONFIG_USB)
	if(port >= 0x340 && port < 0x3a0)
		*(volatile unsigned short *)PORT2ADDR_USB(port) = w;
	else
#endif
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_CFC)
	if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		pcc_iowrite_word(0, port, &w, sizeof(w), 1, 0);
	} else
#endif
		*(volatile unsigned short *)FUNC0(port) = w;
}