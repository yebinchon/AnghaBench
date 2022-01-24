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
 unsigned long M32R_PCC_IOEND0 ; 
 unsigned long M32R_PCC_IOEND1 ; 
 unsigned long M32R_PCC_IOSTART0 ; 
 unsigned long M32R_PCC_IOSTART1 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long,unsigned short*,int,int,int /*<<< orphan*/ ) ; 

unsigned short FUNC4(unsigned long port)
{
	if (port >= 0x300 && port < 0x320)
		return FUNC2(FUNC1(port));
	else
#if defined(CONFIG_PCMCIA) && defined(CONFIG_M32R_PCC)
	if (port >= M32R_PCC_IOSTART0 && port <= M32R_PCC_IOEND0) {
		unsigned short w;
		pcc_ioread(0, port, &w, sizeof(w), 1, 0);
		return w;
	} else 	if (port >= M32R_PCC_IOSTART1 && port <= M32R_PCC_IOEND1) {
		unsigned short w;
		pcc_ioread(1, port, &w, sizeof(w), 1, 0);
		return w;
	} else
#endif
	return *(volatile unsigned short *)FUNC0(port);
}