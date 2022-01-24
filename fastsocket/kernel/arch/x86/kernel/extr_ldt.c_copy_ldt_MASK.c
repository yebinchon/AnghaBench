#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__ ldt; } ;
typedef  TYPE_1__ mm_context_t ;

/* Variables and functions */
 int LDT_ENTRY_SIZE ; 
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(mm_context_t *new, mm_context_t *old)
{
	int err = FUNC0(new, old->size, 0);
	int i;

	if (err < 0)
		return err;

	for (i = 0; i < old->size; i++)
		FUNC1(new->ldt, i, old->ldt + i * LDT_ENTRY_SIZE);
	return 0;
}