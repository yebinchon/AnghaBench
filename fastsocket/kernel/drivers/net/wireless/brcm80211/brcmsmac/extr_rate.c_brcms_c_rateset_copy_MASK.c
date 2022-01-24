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
struct brcms_c_rateset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_c_rateset*,struct brcms_c_rateset const*,int) ; 

void FUNC1(const struct brcms_c_rateset *src,
			  struct brcms_c_rateset *dst)
{
	FUNC0(dst, src, sizeof(struct brcms_c_rateset));
}