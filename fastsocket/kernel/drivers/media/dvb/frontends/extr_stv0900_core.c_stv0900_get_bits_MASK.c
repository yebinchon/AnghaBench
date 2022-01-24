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

u8 FUNC2(struct stv0900_internal *intp, u32 label)
{
	u8 val = 0xff;
	u8 mask, pos;

	FUNC0(label, &mask, &pos);

	val = FUNC1(intp, label >> 16);
	val = (val & mask) >> pos;

	return val;
}