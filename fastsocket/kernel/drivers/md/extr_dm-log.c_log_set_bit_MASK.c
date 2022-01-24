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
typedef  int /*<<< orphan*/  uint32_t ;
struct log_c {int touched_cleaned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long*) ; 

__attribute__((used)) static inline void FUNC1(struct log_c *l,
			       uint32_t *bs, unsigned bit)
{
	FUNC0(bit, (unsigned long *) bs);
	l->touched_cleaned = 1;
}