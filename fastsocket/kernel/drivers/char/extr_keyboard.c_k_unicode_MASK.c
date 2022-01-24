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
struct vc_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ kbdmode; } ;

/* Variables and functions */
 scalar_t__ VC_UNICODE ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ dead_key_next ; 
 int diacr ; 
 unsigned int FUNC1 (struct vc_data*,unsigned int) ; 
 TYPE_1__* kbd ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc, unsigned int value, char up_flag)
{
	if (up_flag)
		return;		/* no action, if this is a key release */

	if (diacr)
		value = FUNC1(vc, value);

	if (dead_key_next) {
		dead_key_next = 0;
		diacr = value;
		return;
	}
	if (kbd->kbdmode == VC_UNICODE)
		FUNC3(vc, value);
	else {
		int c = FUNC0(value);
		if (c != -1)
			FUNC2(vc, c);
	}
}