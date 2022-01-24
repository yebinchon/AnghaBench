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
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned char*,int,int,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned char b, unsigned long port)
{
	if (port >= LAN_IOSTART && port < LAN_IOEND)
		FUNC3(b, FUNC1(port));
	else
#if defined(CONFIG_IDE) && !defined(CONFIG_M32R_CFC)
	if ((port >= 0x1f0 && port <=0x1f7) || port == 0x3f6) {
		*(volatile unsigned char *)__port2addr_ata(port) = b;
	} else
#endif
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_CFC)
	if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		pcc_iowrite_byte(0, port, &b, sizeof(b), 1, 0);
	} else
#endif
		*(volatile unsigned char *)FUNC0(port) = b;
}