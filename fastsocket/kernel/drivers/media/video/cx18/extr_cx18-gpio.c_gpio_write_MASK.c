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
typedef  int u32 ;
struct cx18 {int gpio_dir; int gpio_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_REG_GPIO_DIR1 ; 
 int /*<<< orphan*/  CX18_REG_GPIO_DIR2 ; 
 int /*<<< orphan*/  CX18_REG_GPIO_OUT1 ; 
 int /*<<< orphan*/  CX18_REG_GPIO_OUT2 ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct cx18 *cx)
{
	u32 dir_lo = cx->gpio_dir & 0xffff;
	u32 val_lo = cx->gpio_val & 0xffff;
	u32 dir_hi = cx->gpio_dir >> 16;
	u32 val_hi = cx->gpio_val >> 16;

	FUNC0(cx, dir_lo << 16,
					CX18_REG_GPIO_DIR1, ~dir_lo, dir_lo);
	FUNC0(cx, (dir_lo << 16) | val_lo,
					CX18_REG_GPIO_OUT1, val_lo, dir_lo);
	FUNC0(cx, dir_hi << 16,
					CX18_REG_GPIO_DIR2, ~dir_hi, dir_hi);
	FUNC0(cx, (dir_hi << 16) | val_hi,
					CX18_REG_GPIO_OUT2, val_hi, dir_hi);
}