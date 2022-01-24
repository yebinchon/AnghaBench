#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {int /*<<< orphan*/  i2ePointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned short NO_MAIL_HERE ; 
 int /*<<< orphan*/  SEL_INMAIL ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short
FUNC3(i2eBordStrPtr pB)
{
	if (FUNC0(pB)) {
		FUNC2(SEL_INMAIL, pB->i2ePointer);
		return FUNC1(pB->i2ePointer);
	} else {
		return NO_MAIL_HERE;
	}
}