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
struct slgt_info {int /*<<< orphan*/  signals; } ;

/* Variables and functions */
 unsigned short BIT0 ; 
 unsigned short BIT1 ; 
 unsigned short BIT2 ; 
 unsigned short BIT3 ; 
 int /*<<< orphan*/  SSR ; 
 int /*<<< orphan*/  SerialSignal_CTS ; 
 int /*<<< orphan*/  SerialSignal_DCD ; 
 int /*<<< orphan*/  SerialSignal_DSR ; 
 int /*<<< orphan*/  SerialSignal_DTR ; 
 int /*<<< orphan*/  SerialSignal_RI ; 
 int /*<<< orphan*/  SerialSignal_RTS ; 
 unsigned short FUNC0 (struct slgt_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct slgt_info *info)
{
	unsigned short status = FUNC0(info, SSR);

	/* clear all serial signals except DTR and RTS */
	info->signals &= SerialSignal_DTR + SerialSignal_RTS;

	if (status & BIT3)
		info->signals |= SerialSignal_DSR;
	if (status & BIT2)
		info->signals |= SerialSignal_CTS;
	if (status & BIT1)
		info->signals |= SerialSignal_DCD;
	if (status & BIT0)
		info->signals |= SerialSignal_RI;
}