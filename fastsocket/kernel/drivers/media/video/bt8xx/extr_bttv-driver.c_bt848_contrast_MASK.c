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
struct bttv {int contrast; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_CONTRAST_LO ; 
 int /*<<< orphan*/  BT848_E_CONTROL ; 
 int /*<<< orphan*/  BT848_O_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bttv *btv, int cont)
{
	int value,hibit;

	btv->contrast = cont;

	/* 0-511 */
	value = (cont  >> 7);
	hibit = (value >> 6) & 4;
	FUNC1(value & 0xff, BT848_CONTRAST_LO);
	FUNC0(hibit, ~4, BT848_E_CONTROL);
	FUNC0(hibit, ~4, BT848_O_CONTROL);
}