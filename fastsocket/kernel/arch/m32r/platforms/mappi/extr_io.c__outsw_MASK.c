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
 unsigned int M32R_PCC_IOEND0 ; 
 unsigned int M32R_PCC_IOEND1 ; 
 unsigned int M32R_PCC_IOSTART0 ; 
 unsigned int M32R_PCC_IOSTART1 ; 
 unsigned short* FUNC0 (unsigned int) ; 
 unsigned short* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned short*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,void*,int,unsigned long,int) ; 

void FUNC4(unsigned int port, const void *addr, unsigned long count)
{
	const unsigned short *buf = addr;
	unsigned short *portp;

	if (port >= 0x300 && port < 0x320) {
		portp = FUNC1(port);
		while (count--)
			FUNC2(*buf++, portp);
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_PCC)
	} else if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		pcc_iowrite(0, port, (void *)addr, sizeof(unsigned short),
			    count, 1);
	} else 	if (port >= M32R_PCC_IOSTART1 && port <= M32R_PCC_IOEND1) {
		pcc_iowrite(1, port, (void *)addr, sizeof(unsigned short),
			    count, 1);
#endif
	} else {
		portp = FUNC0(port);
		while (count--)
			*(volatile unsigned short *)portp = *buf++;
	}
}