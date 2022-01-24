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
struct nouveau_therm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_therm*,char*,int) ; 
 int FUNC1 (struct nouveau_therm*,int) ; 

__attribute__((used)) static int
FUNC2(struct nouveau_therm *therm, int line, u32 *divs, u32 *duty)
{
	if (line == 2) {
		u32 reg = FUNC1(therm, 0x0010f0);
		if (reg & 0x80000000) {
			*duty = (reg & 0x7fff0000) >> 16;
			*divs = (reg & 0x00007fff);
			return 0;
		}
	} else
	if (line == 9) {
		u32 reg = FUNC1(therm, 0x0015f4);
		if (reg & 0x80000000) {
			*divs = FUNC1(therm, 0x0015f8);
			*duty = (reg & 0x7fffffff);
			return 0;
		}
	} else {
		FUNC0(therm, "unknown pwm ctrl for gpio %d\n", line);
		return -ENODEV;
	}

	return -EINVAL;
}