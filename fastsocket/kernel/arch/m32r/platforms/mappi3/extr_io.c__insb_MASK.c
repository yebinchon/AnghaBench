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
 unsigned int LAN_IOEND ; 
 unsigned int LAN_IOSTART ; 
 unsigned int M32R_PCC_IOEND0 ; 
 unsigned int M32R_PCC_IOSTART0 ; 
 unsigned char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned char* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,void*,int,unsigned long,int) ; 

void FUNC5(unsigned int port, void * addr, unsigned long count)
{
	if (port >= LAN_IOSTART && port < LAN_IOEND)
		FUNC3(FUNC1(port), addr, count);
#if defined(CONFIG_IDE)
	else if ( ((port >= 0x170 && port <=0x177) || port == 0x376) ||
		  ((port >= 0x1f0 && port <=0x1f7) || port == 0x3f6) ){
		unsigned char *buf = addr;
		unsigned char *portp = __port2addr_ata(port);
		while (count--)
			*buf++ = *(volatile unsigned char *)portp;
	}
#endif
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_CFC)
	else if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		pcc_ioread_byte(0, port, (void *)addr, sizeof(unsigned char),
				count, 1);
	}
#endif
	else {
		unsigned char *buf = addr;
		unsigned char *portp = FUNC0(port);
		while (count--)
			*buf++ = *(volatile unsigned char *)portp;
	}
}