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
struct vc_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ kbdmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CRLF ; 
 scalar_t__ VC_UNICODE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ diacr ; 
 TYPE_1__* kbd ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc)
{
	if (diacr) {
		if (kbd->kbdmode == VC_UNICODE)
			FUNC2(vc, diacr);
		else {
			int c = FUNC0(diacr);
			if (c != -1)
				FUNC1(vc, c);
		}
		diacr = 0;
	}
	FUNC1(vc, 13);
	if (FUNC3(kbd, VC_CRLF))
		FUNC1(vc, 10);
}