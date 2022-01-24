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
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int /*<<< orphan*/  member_0; } ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq16 const*) ; 
#define  ZD_CR11 129 
#define  ZD_CR251 128 
 int FUNC1 (struct zd_chip*,struct zd_ioreq16 const*,int /*<<< orphan*/ ) ; 
 struct zd_chip* FUNC2 (struct zd_rf*) ; 

__attribute__((used)) static int FUNC3(struct zd_rf *rf)
{
	struct zd_chip *chip = FUNC2(rf);
	static const struct zd_ioreq16 ioreqs[] = {
		{ ZD_CR11,  0x00 },
		{ ZD_CR251, 0x7f },
	};

	return FUNC1(chip, ioreqs, FUNC0(ioreqs));
}