#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wm8400 {int (* write_dev ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  io_data; int /*<<< orphan*/ * reg_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  writable; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* reg_data ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct wm8400 *wm8400, u8 reg, int num_regs,
			u16 *src)
{
	int ret, i;

	FUNC1(reg + num_regs - 1 > FUNC0(wm8400->reg_cache));

	for (i = 0; i < num_regs; i++) {
		FUNC1(!reg_data[reg + i].writable);
		wm8400->reg_cache[reg + i] = src[i];
		src[i] = FUNC2(src[i]);
	}

	/* Do the actual I/O */
	ret = wm8400->write_dev(wm8400->io_data, reg, num_regs, src);
	if (ret != 0)
		return -EIO;

	return 0;
}