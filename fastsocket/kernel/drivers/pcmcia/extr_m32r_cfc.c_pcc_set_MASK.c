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
typedef  int /*<<< orphan*/  u_short ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(u_short sock, unsigned int reg, unsigned int data)
{
	FUNC1(data, reg);
	FUNC0(3, "m32r_cfc: pcc_set: reg(0x%08x)=0x%04x\n", reg, data);
}