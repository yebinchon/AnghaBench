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
struct vc_data {scalar_t__* vc_uni_pagedir_loc; } ;
struct uni_pagedir {scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uni_pagedir*) ; 
 int /*<<< orphan*/  FUNC1 (struct uni_pagedir*) ; 

void FUNC2(struct vc_data *vc)
{
	struct uni_pagedir *p;

	p = (struct uni_pagedir *)*vc->vc_uni_pagedir_loc;
	if (!p)
		return;
	*vc->vc_uni_pagedir_loc = 0;
	if (--p->refcount)
		return;
	FUNC0(p);
	FUNC1(p);
}