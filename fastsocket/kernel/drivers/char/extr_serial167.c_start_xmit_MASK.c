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
typedef  unsigned char u_char ;
struct cyclades_port {int line; } ;

/* Variables and functions */
 scalar_t__ BASE_ADDR ; 
 size_t CyCAR ; 
 size_t CyIER ; 
 unsigned char volatile CyTxMpty ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(struct cyclades_port *info)
{
	unsigned long flags;
	volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
	int channel;

	channel = info->line;
	FUNC1(flags);
	base_addr[CyCAR] = channel;
	base_addr[CyIER] |= CyTxMpty;
	FUNC0(flags);
}