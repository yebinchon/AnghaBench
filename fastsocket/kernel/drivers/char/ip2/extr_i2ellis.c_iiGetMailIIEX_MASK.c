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
struct TYPE_4__ {int /*<<< orphan*/  i2eXMail; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned short NO_MAIL_HERE ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short
FUNC2(i2eBordStrPtr pB)
{
	if (FUNC0(pB))
		return FUNC1(pB->i2eXMail);
	else
		return NO_MAIL_HERE;
}