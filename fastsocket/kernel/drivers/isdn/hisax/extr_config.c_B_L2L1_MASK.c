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
struct hisax_if {int /*<<< orphan*/  (* l2l1 ) (struct hisax_if*,int,void*) ;} ;
struct hisax_b_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hisax_if*,int,void*) ; 

__attribute__((used)) static inline void FUNC1(struct hisax_b_if *b_if, int pr, void *arg)
{
	struct hisax_if *ifc = (struct hisax_if *) b_if;
	ifc->l2l1(ifc, pr, arg);
}