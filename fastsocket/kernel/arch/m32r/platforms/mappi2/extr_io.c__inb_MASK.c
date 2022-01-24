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
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 unsigned long LAN_IOEND ; 
 unsigned long LAN_IOSTART ; 
 unsigned long M32R_PCC_IOEND0 ; 
 unsigned long M32R_PCC_IOSTART0 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned char*,int,int,int /*<<< orphan*/ ) ; 

unsigned char FUNC5(unsigned long port)
{
	if (port >= LAN_IOSTART && port < LAN_IOEND)
		return FUNC3(FUNC1(port));
#if defined(CONFIG_IDE) && !defined(CONFIG_M32R_CFC)
	else if ((port >= 0x1f0 && port <=0x1f7) || port == 0x3f6) {
		return *(volatile unsigned char *)__port2addr_ata(port);
	}
#endif
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_CFC)
	else if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		unsigned char b;
		pcc_ioread_byte(0, port, &b, sizeof(b), 1, 0);
		return b;
	} else
#endif

	return *(volatile unsigned char *)FUNC0(port);
}