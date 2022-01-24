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
typedef  int u8 ;
typedef  int u32 ;
struct stv0900_internal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int*) ; 
 int FUNC1 (struct stv0900_internal*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stv0900_internal*,int,int) ; 

void FUNC3(struct stv0900_internal *intp, u32 label, u8 val)
{
	u8 reg, mask, pos;

	reg = FUNC1(intp, (label >> 16) & 0xffff);
	FUNC0(label, &mask, &pos);

	val = mask & (val << pos);

	reg = (reg & (~mask)) | val;
	FUNC2(intp, (label >> 16) & 0xffff, reg);

}