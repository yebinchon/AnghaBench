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
struct bttv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 

__attribute__((used)) static void FUNC1(struct bttv *btv, unsigned int input)
{
	static const int masks[] = {0x30, 0x01, 0x12, 0x23};
	FUNC0(masks[input%4]);
}