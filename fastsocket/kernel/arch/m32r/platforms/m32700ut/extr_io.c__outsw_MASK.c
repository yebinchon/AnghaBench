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
 unsigned short* FUNC0 (unsigned int) ; 
 unsigned short* FUNC1 (unsigned int) ; 
 unsigned short* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,void*,int,unsigned long,int) ; 

void FUNC4(unsigned int port, const void *addr, unsigned long count)
{
	const unsigned short *buf = addr;
	unsigned short *portp;

	if (port >= LAN_IOSTART && port < LAN_IOEND) {
		/*
		 * This portion is only used by smc91111.c to write data
		 * into the DATA_REG. Do not swap the data.
		 */
		portp = FUNC1(port);
		while (count--)
			*(volatile unsigned short *)portp = *buf++;
#if defined(CONFIG_IDE) && !defined(CONFIG_M32R_CFC)
	} else if ((port >= 0x1f0 && port <=0x1f7) || port == 0x3f6) {
		portp = __port2addr_ata(port);
		while (count--)
			*(volatile unsigned short *)portp = *buf++;
#endif
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_CFC)
	} else if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		pcc_iowrite_word(9, port, (void *)addr, sizeof(unsigned short),
				 count, 1);
#endif
	} else {
		portp = FUNC0(port);
		while (count--)
			*(volatile unsigned short *)portp = *buf++;
	}
}