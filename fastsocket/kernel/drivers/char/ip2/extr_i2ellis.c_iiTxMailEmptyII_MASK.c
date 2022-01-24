#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2ePointer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEL_OUTMAIL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(i2eBordStrPtr pB)
{
	int port = pB->i2ePointer;
	FUNC1(SEL_OUTMAIL, port);
	return FUNC0(port) == 0;
}