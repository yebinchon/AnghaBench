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
struct TYPE_3__ {int /*<<< orphan*/  i2eData; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short
FUNC1(i2eBordStrPtr pB)
{
	return FUNC0(pB->i2eData);
}