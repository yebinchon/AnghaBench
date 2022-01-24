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
struct i8254_struct {int* logic2phys; unsigned int* mode; int /*<<< orphan*/  iobase; } ;

/* Variables and functions */
 void FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct i8254_struct *st, int channel,
			   unsigned int mode)
{
	int chan = st->logic2phys[channel];

	st->mode[chan] = mode;
	return FUNC0(st->iobase, chan, mode);
}