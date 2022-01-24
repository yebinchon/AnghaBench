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
struct TYPE_3__ {scalar_t__ ether; scalar_t__ main; } ;
typedef  TYPE_1__ pvc_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(int on, pvc_device *pvc)
{
	if (on) {
		if (pvc->main)
			if (!FUNC1(pvc->main))
				FUNC2(pvc->main);
		if (pvc->ether)
			if (!FUNC1(pvc->ether))
				FUNC2(pvc->ether);
	} else {
		if (pvc->main)
			if (FUNC1(pvc->main))
				FUNC0(pvc->main);
		if (pvc->ether)
			if (FUNC1(pvc->ether))
				FUNC0(pvc->ether);
	}
}